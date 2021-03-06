Scripting
=========

To help with modularization, we are using the [Rerun framework][rerun-readme].

> Rerun is a lightweight tool building framework useful to those
> implementing management procedure with shell scripts.

Rerun helps with creating properly documented options, commands, modules
(groups of related commands), and keeps all the elements separated into
distinct files, while makes them simple to remix between projects.

In a meta sort of way, Rerun comes with a sample module called "stubbs"
that is responsible for creating skeletons for any new
modules/commands/options.

To see how Rerun works, navigate into the `tmp/scripts/rerun` directory
and run:

    $ ./rerun -h

This will start you down the road to using Rerun.

We keep our custom rerum modules in `tmp/scripts/rerun-modules`, which
is [structured like so][rerun-layout]. You can most easily explore them
via the CLI by navigating to `tmp/scripts` and running

    $ RERUN_MODULES=rerun-modules ./rerun/rerun

Currently, we're using Rerun as much as possible, and having a single
bash script, `jenkins-kickstart.sh`, that will act as a container
script. The intention is that jenkins will only ever be running one
script, so that a common build job will be able to kickstart job at any
point on the project at any point in the commit history. (At a future
time, I should be able to run a build job on a past commit, and the job
should run to completion without needing to be tailored to scripting
expectations that were in place at the time the commit was made.)

Internationalization (i18n)
---------------------------

Some clients may need scripts to be internationalized. This article in
the Linux Journal might prove useful:

[Internationalizing Those Bash Scripts][i18n-bash]

<!-- Links -->
   [rerun-readme]: https://github.com/dtolabs/rerun#readme
   [rerun-layout]: https://github.com/dtolabs/rerun/blob/master/README.md#layout
   [i18n-bash]:    http://www.linuxjournal.com/content/internationalizing-those-bash-scripts
