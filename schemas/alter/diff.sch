# Basic structure for the diff script file generated by diff process
# PostgreSQL Version: 9.x
# CAUTION: Do not modify this file unless you know what you are doing.
#          Code generation can be broken if incorrect changes are made.

%if {has-changes} %then
  [-- Database diff generated with pgModeler (PostgreSQL Database Modeler).] $br
  [-- pgModeler  version: ] {pgmodeler-ver} $br
  [-- PostgreSQL version: ] {pgsql-ver} $br

  $br
  [-- ] $ob [ Diff summary ] $cb $br
  [-- Dropped objects: ] {drop} $br
  [-- Created objects: ] {create} $br
  [-- Changed objects: ] {change} $br
  [-- Truncated tables: ] {truncate} $br

  %if {function} %then
    $br
    [SET check_function_bodies = false;] $br
    [-- ddl-end --] $br
  %end

  %if {unset-perms} %then
    $br $br
    [-- ] $ob [ Undone permissions ] $cb [ --] $br
    {unset-perms}
  %end

  %if {drop-cmds} %then
    $br $br
    [-- ] $ob [ Dropped objects ] $cb [ --] $br
    {drop-cmds}
  %end

  %if {create-cmds} %then
    $br $br
    [-- ] $ob [ Created objects ] $cb [ --] $br
    {create-cmds}
  %end

  %if {truncate-cmds} %then
    $br $br
    [-- ] $ob [ Truncated tables ] $cb [ --] $br
    {truncate-cmds}
  %end

  %if {alter-cmds} %then
    $br $br
    [-- ] $ob [ Changed objects ] $cb [ --] $br
    {alter-cmds}
  %end

  %if {set-perms} %then
    $br $br
    [-- ] $ob [ Created permissions ] $cb [ --] $br
    {set-perms}
  %end
%end
