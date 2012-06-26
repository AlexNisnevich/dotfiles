import os
import sublime
import sublime_plugin


class WhitespaceListener(sublime_plugin.EventListener):
    """Event listener to manage whitespace on save"""
    def on_pre_save(self, view):
        if view.settings().get('expand_tabs_on_save') == True:
            view.run_command('expand_tabs')
        if view.settings().get('trim_trailing_whitespace_on_save') == True:
            view.run_command('trim_trailing_whitespace')
        if view.settings().get('ensure_newline_at_eof_on_save') == True:
            view.run_command('ensure_newline_at_eof')


class TrimTrailingWhitespace(sublime_plugin.TextCommand):
    """Trims trailing whitespace."""
    def run(self, *args):
        trailing_white_space = self.view.find_all("[\t ]+$")
        edit = self.view.begin_edit()
        for match in trailing_white_space:
            self.view.erase(edit, match)
        self.view.end_edit(edit)


class EnsureNewlineAtEof(sublime_plugin.TextCommand):
    """Ensures the desired number of trailing new lines.

    Set 'max_newline_removals' to the number of newlines to be removed ('
    a performance/sanity check.')

    Set 'trailing_newlines' to the number of desired newlines at the end of
    the file.
    """
    def run(self, *args):
        # Remove up to *max_newline_removals* trailing new lines.
        max_removals = self.view.settings().get('max_newline_removals', 20)
        edit = self.view.begin_edit()
        for i in range(max_removals):
            size = self.view.size()
            last_line = self.view.full_line(size - 1)
            if size > 0 and self.view.substr(last_line) == '\n':
                self.view.erase(edit, last_line)

        # Add desired trailing newlines
        trailing_newlines = self.view.settings().get('trailing_newlines', 1)
        for i in range(trailing_newlines):
            if not self.view.substr(last_line).endswith('\n'):
                self.view.insert(edit, self.view.size(), '\n')
        self.view.end_edit(edit)
