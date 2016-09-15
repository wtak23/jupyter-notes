Most notes here were wrote with the old **ipython-notebook** (before the whole Jupyter movement).

That was when I first began to learn python. Back then, I had a luke-warm feeling about ipython-notebook, and preferred to use Anaconda Spyder environment. Getting my hands wet with jupyter-notebook after a few months hiatus, I was pleasantly surprised on the amount of improvement they made (*e..g.*, integration with R with magic-cell, hyper-linked TOC that makes code navigation smoother).

I probably will use this more often when trying to acclimate myself with new python packages and web APIs.

.. contents:: **Contents**



#################
Personal snippets
#################
***********************************
TOC for hosting on jupyter notebook
***********************************
When ready to host the code on nbviewer, insert below as a markdown cell (this will destroy the TOC on the right-sidebar in jupyter, but will create a nice auto-generated TOC at the top of the notebook).

Credit: https://github.com/kmahelona/ipython_notebook_goodies

.. code-block:: html

    **Table of Contents**

    <div id="toc"></div>
    <script type="text/javascript" 
    src="https://raw.github.com/kmahelona/ipython_notebook_goodies/master/ipython_notebook_toc.js">
    </script>


***********
Cell magics
***********
http://ipython.readthedocs.io/en/stable/whatsnew/version0.13.html#cell-magics

Also checkout `rmagic <https://ipython.org/ipython-doc/2/config/extensions/rmagic.html>`__

- ``%%!``: run cell body with the underlying OS shell; this is similar to prefixing every line in the cell with ``!``.
- ``%%bash``: run cell body under bash.
- ``%%capture``: capture the output of the code in the cell (and stderr as well). Useful to run codes that produce too much output that you don’t even want scrolled.
- ``%%file``: save cell body as a file.
- ``%%perl``: run cell body using Perl.
- ``%%prun``: run cell body with profiler (cell extension of ``%prun``).
- ``%%python3``: run cell body using Python 3.
- ``%%ruby``: run cell body using Ruby.
- ``%%script``: run cell body with the script specified in the first line.
- ``%%sh``: run cell body using sh.
- ``%%sx``: run cell with system shell and capture process output (cell extension of ``%sx``).
- ``%%system``: run cell with system shell (``%%!`` is an alias to this).
- ``%%timeit``: time the execution of the cell (extension of ``%timeit``).

**********************
Enable ``toggle`` code
**********************
Insert the following in code cells:

.. code-block:: python

    from IPython.display import HTML

    HTML('''<script>
    code_show=true;
    function code_toggle() {
     if (code_show){
     $('div.input').hide();
     } else {
     $('div.input').show();
     }
     code_show = !code_show
    }
    $( document ).ready(code_toggle);
    </script>
    <form action="javascript:code_toggle()"><input type="submit" value="Click here to toggle on/off the raw code."></form>''')

**********************
Frequently used config
**********************
.. code-block:: python

    import ipywidgets as widgets
    from IPython.widgets import interact, interactive
    from IPython.display import display

    import seaborn as sns
    sns.set_style("whitegrid")
    sns.set_context("notebook", rc={'figure.figsize':(14,10)})

    import pandas as pd
    pd.set_option('display.max_rows', 20)
    pd.set_option('precision',4)