function zoomfactor(z)
{
	this.patcher.message("zoomfactor", z);
}

function list(x, y)
{
	this.patcher.wind.scrollto(x, y);
	outlet(0, "scrolloffset", x, y);
	bang();
}

function bang()
{
	outlet(0, "windowposition", this.patcher.wind.location);
}
