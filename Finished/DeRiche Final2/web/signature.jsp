<!-- /*************************************************

Signsend - The signature capture webapp sample using HTML5 Canvas.

Author: Jack Wong <jack.wong@zetakey.com>
Copyright (c): 2014 Zetakey Solutions Limited, all rights reserved

 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

You may contact the author of Jack Wong by e-mail at:
jack.wong@zetakey.com

The latest version can obtained from:
https://github.com/jackccwong/signsend

The live demo is located at:
http://apps.zetakey.com/signsend

**************************************************/ -->


<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="initial-scale=1, maximum-scale=1">

		<script src="signature.js"></script>

	</head>

	<style>
		body, canvas, div, form, input {
			margin: 0;
			padding: 0;
		}
		#wrapper {
			width: 100%;
			padding: 1px;
		}
		canvas {
			position: relative;
			margin: 1px;
			margin-left: 0px;
			border: 1px solid #3a87ad;
		}
		h1, p {
			padding-left: 2px;
			width: 100%;
			margin: 0 auto;
		}
		#controlPanel {
			margin: 2px;
		}
		#saveSignature {
			display: none;
		}
	</style>

	<body>
		<div id="wrapper">
			<p>Zetakey Signature Webapp</p>
			<div id="canvas">
				Canvas is not supported.
			</div>

			<script>
				zkSignature.capture();
			</script>

			<button type="button" onclick="zkSignature.clear()">
				Clear Signature
			</button>
			<br />
			<img id="saveSignature" alt="Saved image png"/>

			<form>
				<label for="Email">To:</label>
				<input type="email" id="sendemail" size="35" placeholder="Send to email" autocomplete="on"/><br />
				<label for="Email">From:</label>
				<input type="email" id="replyemail"  size="35" value="contact@zetakey.com" disabled />(Disabled)
				<br />
				<button type="button" onclick="zkSignature.send()">
					Send Email
				</button>
			</form>
		</div>
	</body>
</html>