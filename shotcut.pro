TEMPLATE = subdirs
CONFIG   += qwt
SUBDIRS = CuteLogger src
cache()
src.depends = CuteLogger
