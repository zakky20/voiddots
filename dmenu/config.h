static int topbar = 1;
static const int user_bh = 5;
static unsigned int lines = 15;
static int columns = 5; 

static const char *fonts[] = {
	"Iosevka Nerd Font:size=11:style=Bold",
	"JoyPixels:pixelsize=11:antialias=true:autohint=true:style=Bold",
};

static const char *prompt = NULL;
static const unsigned int bgalpha = 0xe0;
static const unsigned int fgalpha = OPAQUE;

static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
// [SchemeNorm] = { "#839496", "#002b36" },
// [SchemeSel]  = { "#002b36", "#2aa198" },
// [SchemeOut]  = { "#002b36", "#002b36" },

[SchemeNorm] = { "#d8dee9", "#2e3440" },
[SchemeSel]  = { "#2e3440", "#81a1c1" },
[SchemeOut]  = { "#2e3440", "#2e3440" },
// [SchemeSelHighlight] = { "#ffc978", "#005577" },
// [SchemeNormHighlight] = { "#ffc978", "#222222" },
// [SchemeOutHighlight] = { "#ffc978", "#00ffff" },
};

static const unsigned int alphas[SchemeLast][2] = {
	/*		fgalpha		bgalphga	*/
	[SchemeNorm] = { fgalpha, bgalpha },
	[SchemeSel] = { fgalpha, bgalpha },
	[SchemeOut] = { fgalpha, bgalpha },
};

static const char worddelimiters[] = " ";
