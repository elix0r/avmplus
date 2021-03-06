/* -*- Mode: C++; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import com.adobe.test.Assert;


var gTestfile = 'regress-455775.js';
//-----------------------------------------------------------------------------
var BUGNUMBER = 455775;
var summary = 'Do not assert: cx->fp->flags & JSFRAME_EVAL';
var actual = 'No Crash';
var expect = 'No Crash';


//-----------------------------------------------------------------------------
addtestcases();
//-----------------------------------------------------------------------------

function addtestcases()
{

  //printBugNumber(BUGNUMBER);
  //printStatus (summary);

  try
  {
    (function() { var c; eval("new (c ? 1 : {});"); })();
  }
  catch(ex)
  {
  }

  Assert.expectEq(summary, expect, actual);


}

