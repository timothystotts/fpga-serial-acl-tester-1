/**-----------------------------------------------------------------------------
-- MIT License
--
-- Copyright (c) 2020 Timothy Stotts
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.
------------------------------------------------------------------------------*/
/**-----------------------------------------------------------------------------
 * @file thresh_presets_include.c
 *
 * @brief
 * Definitions of threshold and timer presets fo experimentation and testing with
 * the Pmod ACL2.
 *
 * @author
 * Timothy Stotts (timothystotts08@gmail.com)
 *
 * @copyright
 * (c) 2020 Copyright Timothy Stotts
 *
 * This program is free software; distributed under the terms of the MIT
 * License.
------------------------------------------------------------------------------*/

#include <stdint.h>
#include "xil_types.h"
#include "thresh_presets_include.h"

const uint16_t c_thresh_presets_active_a[2][16] = {
		{32, 64, 96, 128, 160, 192, 224, 256, 288, 320, 65000, 65000, 65000, 65000, 65000, 65000},
		{16, 32, 48, 64, 80, 96, 112, 128, 144, 160, 65000, 65000, 65000, 65000, 65000, 65000}
};

const uint16_t c_thresh_presets_inactive_a[2][16] = {
		{16, 32, 48, 64, 80, 96, 112, 128, 144, 160, 65000, 65000, 65000, 65000, 65000, 65000},
		{32, 64, 96, 128, 160, 192, 224, 256, 288, 320, 65000, 65000, 65000, 65000, 65000, 65000}
};
