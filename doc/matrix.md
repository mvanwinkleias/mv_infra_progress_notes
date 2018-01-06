# Development Process Progress

This documents the overall process of making examples for different programming
languages that fit within the basic infrastructure setup.

## Package System Features

* RPM / Directory traversal so permissions for different users can be used

## Packaging System Support I'd Like to Add

* Brew
* Chocolatey (sp)

## Languages I'd Like to Add

* C/C++
* Java
* Ruby

## Project Layout and Installation
<table>
<tr>
<td>&nbsp;</td>
<th>Installs via. Package (RPM, Deb)</td>
<th>Single Command Compiles / Runs in src dir</th>
<th>Works with "local" libraries</th>
<th>Works with "internal" libraries</th>
<th>Works with "external" libraries"</th>
<th>"Standard" Automated Tests</th>

<tr>
	<td>Bash</td>
	<td>Yes.</td>
	<td>Yes.</td>
	<td>Yes.</td>
	<td>Yes.</td>
	<td>Yes.</td>
	<td>N/A.</td>
</tr>


<tr>
	<td>Perl</td>
	<td>Yes.</td>
	<td>Yes.</td>
	<td>Yes.</td>
	<td>Yes.</td>
	<td>Yes.</td>
	<td>Yes, but example needed.</td>
	
</tr>

<tr>
	<td>Python</td>
	<td>Yes.</td>
	<td>Yes.</td>
	<td>Yes.</td>
	<td>Yes.</td>
	<td>Yes.</td>
	<td>Yes.</td>
</tr>

</table>

### Notes

* "local" libraries - libraries from within it's own source tree
* "internal" libraries - other libraries within the infrastructure that have been installed
as packages and are correctly used
* "external" libraries - vendor supplied, or others that aren't within an "infra" package.
* "Standard" Automated Tests - wherever there's a specific library / method used for testing
so that when the library is migrated to a "proper" deployment unit ('package', 'library')
it's more easily accepted by the community.  A "No" in this field doesn't mean
the code ISN'T tested, it just means that standard tests aren't working yet.

## Features

<table>
<tr>
	<td>&nbsp;</td>
	<th colspan=2>Layout Knowledge</th>
	<th colspan=1>Logging</th>
	<th colspan=2>Silent When Cron'd</th>
<tr>
	<td>&nbsp;</td>
	<th>Detects whether running inside of src dir and handles things appropriately</th>
	<td>Methods</td>
	<th>Logs to Syslog</th>
	<th>Basic Debugging Facilities</th>
	<th>Debug Message Suppression</th>
</tr>

<tr>
	<td>Bash</td>
	<td>Yes.</td>
	<td>
	Global Variables (could be better...)
	$INPUT_DIR etc.<br>
	view bash_lib.sh
	<td>Yes.</td>
	<td>Yes.</td>
	<td>Yes.</td>
</tr>


<tr>
	<td>Perl</td>
	<td>Yes.</td>
	<td>
		Class method call:<br>
		$self->input_dir() etc.
		perldoc FullProjectPaths.pm
	</td>
	<td>Yes.</td>
	<td>Yes.</td>
	<td>Yes.</td>
</tr>
<tr>
	<td>Python</td>
	<td>Pending.</td>
	<td>
		Pending.
	</td>
	<td>Pending.</td>
	<td>Pending.</td>
	<td>Pending.</td>
</tr>


</table>

# Example Applications

## Command Line

## cgi-bin
