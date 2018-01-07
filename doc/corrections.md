# Standard Directory Names

After documenting "full project paths" I started naming directories like this:

* INPUT_DIR
  * INPUT_SRC_DIR
  * INPUT_INST_DIR

and the code needs to be changed to reflect the naming conventions.

Mostly this is just the Makefile.

# Perl

## Logger::Syslog

<pre>man 3 syslog</pre>
shows different severities than what the module implements.

* Emergency is missing
* "critic" is named incorrectly

