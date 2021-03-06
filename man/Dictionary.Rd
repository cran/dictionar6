% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Dictionary.R
\name{Dictionary}
\alias{Dictionary}
\title{R6 Dictionary}
\description{
Dictionaries are essential objects in other object-oriented
languages, such as Python. The primary function of a dictionary is to store
items in a key-value pair. Where the key is the name of the item and the
value is the value. This object contains all the 'usual' methods that would
be found in other languages, including setting and getting values,
adding and removing items, and containedness checks.
}
\section{Active bindings}{
\if{html}{\out{<div class="r6-active-bindings">}}
\describe{
\item{\code{keys}}{None -> \code{character()} \cr
Get dictionary keys.}

\item{\code{values}}{None -> \code{list()} \cr
Get dictionary values.}

\item{\code{items}}{\code{list() -> self} / None -> \code{list()} \cr
If \code{x} is missing then returns the dictionary items. \cr
If \code{x} is not missing then used to set items in the dictionary.}

\item{\code{length}}{None -> \code{integer(1)} \cr
Get dictionary length as number of items.}

\item{\code{typed}}{None -> \code{logical(1)} \cr
Get if the dictionary is typed (\code{TRUE}) or not (\code{FALSE}).}

\item{\code{types}}{None -> \code{character()} \cr
Get the dictionary types (NULL if un-typed).}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{Dictionary$new()}}
\item \href{#method-add}{\code{Dictionary$add()}}
\item \href{#method-rekey}{\code{Dictionary$rekey()}}
\item \href{#method-revalue}{\code{Dictionary$revalue()}}
\item \href{#method-remove}{\code{Dictionary$remove()}}
\item \href{#method-get}{\code{Dictionary$get()}}
\item \href{#method-get_list}{\code{Dictionary$get_list()}}
\item \href{#method-has}{\code{Dictionary$has()}}
\item \href{#method-assert_contains}{\code{Dictionary$assert_contains()}}
\item \href{#method-has_value}{\code{Dictionary$has_value()}}
\item \href{#method-print}{\code{Dictionary$print()}}
\item \href{#method-summary}{\code{Dictionary$summary()}}
\item \href{#method-merge}{\code{Dictionary$merge()}}
\item \href{#method-clone}{\code{Dictionary$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
Constructs a \code{Dictionary} object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$new(..., x = list(...), types = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{(\code{ANY}) \cr
Named arguments with names corresponding to the items to add to the
dictionary, where the keys are the names and the values are the
elements. Names must be unique.}

\item{\code{x}}{(\code{list()}) \cr
A named list with the names corresponding to the items to add to the
dictionary, where the keys are the list names and the values are the
list elements. Names must be unique.}

\item{\code{types}}{(\code{character()}) \cr
If non-NULL then \code{types} creates a typed dictionary in which all
elements of the dictionary must inherit from these \code{types}. Any class
can be given to \code{types} as long as there is a valid \code{as.character}
method associated with the class.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-add"></a>}}
\if{latex}{\out{\hypertarget{method-add}{}}}
\subsection{Method \code{add()}}{
Add new items to the dictionary.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$add(x = list(), keys = NULL, values = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{x}}{(\code{list()}) \cr
Same as initialize, items to add to the list.}

\item{\code{keys}}{(\code{character()}) \cr
If \code{x} is NULL then \code{keys} and \code{values} can be provided to add the
new items by a character vector of keys and list of values instead.}

\item{\code{values}}{(\code{list()}) \cr
If \code{x} is NULL then \code{keys} and \code{values} can be provided to add the
new items by a list of keys and values instead.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-rekey"></a>}}
\if{latex}{\out{\hypertarget{method-rekey}{}}}
\subsection{Method \code{rekey()}}{
Change the name of a given key.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$rekey(key, new_key)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{key}}{(\code{character(1)}) \cr
Key to rename.}

\item{\code{new_key}}{(\code{character(1)}) \cr
New name of key, must not already exist in dictionary.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-revalue"></a>}}
\if{latex}{\out{\hypertarget{method-revalue}{}}}
\subsection{Method \code{revalue()}}{
Change the value of a given item.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$revalue(key, new_value)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{key}}{(\code{character(1)}) \cr
Key of item to revalue.}

\item{\code{new_value}}{(\code{character(1)}) \cr
New value of item.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-remove"></a>}}
\if{latex}{\out{\hypertarget{method-remove}{}}}
\subsection{Method \code{remove()}}{
Removes the given item from the list.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$remove(key)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{key}}{(\code{character(1)}) \cr
Key of item to remove.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-get"></a>}}
\if{latex}{\out{\hypertarget{method-get}{}}}
\subsection{Method \code{get()}}{
Gets the given items from the dictionary. If only one
item is requested then returns the (unlisted) item, or if multiple items
are requested as the dictionary is typed, then the unlisted items are
returned.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$get(keys, clone = TRUE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{keys}}{(\code{character()}) \cr
Keys of items to get.}

\item{\code{clone}}{(\code{logical(1)}) \cr
If \code{TRUE} (default) then deep clones R6 objects if requested.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-get_list"></a>}}
\if{latex}{\out{\hypertarget{method-get_list}{}}}
\subsection{Method \code{get_list()}}{
Gets the given items from the dictionary as list.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$get_list(keys, clone = TRUE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{keys}}{(\code{character()}) \cr
Keys of items to get.}

\item{\code{clone}}{(\code{logical(1)}) \cr
If \code{TRUE} (default) then deep clones R6 objects if requested.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-has"></a>}}
\if{latex}{\out{\hypertarget{method-has}{}}}
\subsection{Method \code{has()}}{
Checks if the given key is in the list, returns a logical.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$has(key)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{key}}{(\code{character(1)}) \cr
Key to check.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-assert_contains"></a>}}
\if{latex}{\out{\hypertarget{method-assert_contains}{}}}
\subsection{Method \code{assert_contains()}}{
Asserts if the given keys are in the list, returns keys
invisibly if assertion passes otherwise errors.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$assert_contains(keys)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{keys}}{(\code{character()}) \cr
Keys to check.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-has_value"></a>}}
\if{latex}{\out{\hypertarget{method-has_value}{}}}
\subsection{Method \code{has_value()}}{
Checks if the given value is in the list, returns a
logical.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$has_value(value)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{value}}{(\code{ANY}) \cr
Value to check.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-print"></a>}}
\if{latex}{\out{\hypertarget{method-print}{}}}
\subsection{Method \code{print()}}{
Prints dictionary.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$print(n = 2)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{n}}{(\code{integer(1)}) \cr
Number of items to print on either side of ellipsis.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-summary"></a>}}
\if{latex}{\out{\hypertarget{method-summary}{}}}
\subsection{Method \code{summary()}}{
Summarises dictionary.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$summary(n = 2)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{n}}{(\code{integer(1)}) \cr
Number of items to print on either side of ellipsis.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-merge"></a>}}
\if{latex}{\out{\hypertarget{method-merge}{}}}
\subsection{Method \code{merge()}}{
Merges another dictionary, or list of dictionaries, into
self.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$merge(x)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{x}}{(\code{Dictionary(1) | list()}) \cr
Dictionary or list of dictionaries to merge in, must have unique keys.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Dictionary$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
