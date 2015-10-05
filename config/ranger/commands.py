
from ranger.api.commands import *

import os
import shutil

class empty(Command):
    """:empty

    Empties the trash directory ~/.Trash
    """

    def execute(self):
        folder = os.path.expanduser('~/.Trash/')
        for the_file in os.listdir(folder):
            file_path = os.path.join(folder, the_file)
            try:
                if os.path.isfile(file_path):
                    os.unlink(file_path)
                elif os.path.isdir(file_path):
                    shutil.rmtree(file_path)
            except Exception as e:
                print(e)

