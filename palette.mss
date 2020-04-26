/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@fallback:      "Noto Sans Regular",
                "Noto Sans CJK JP Regular",
                "Noto Sans Adlam Regular", "Noto Sans Adlam Unjoined Regular"
                "Noto Sans Armenian Regular",
                "Noto Sans Balinese Regular",
                "Noto Sans Bamum Regular",
                "Noto Sans Batak Regular",
                "Noto Sans Bengali UI Regular",
                "Noto Sans Buginese Regular",
                "Noto Sans Buhid Regular",
                "Noto Sans Canadian Aboriginal Regular",
                "Noto Sans Chakma Regular",
                "Noto Sans Cham Regular",
                "Noto Sans Cherokee Regular",
                "Noto Sans Coptic Regular",
                "Noto Sans Devanagari UI Regular",
                "Noto Sans Ethiopic Regular",
                "Noto Sans Georgian Regular",
                "Noto Sans Gujarati UI Regular",
                "Noto Sans Gurmukhi UI Regular",
                "Noto Sans Hanunoo Regular",
                "Noto Sans Hebrew Regular",
                "Noto Sans Javanese Regular",
                "Noto Sans Kannada UI Regular",
                "Noto Sans Kayah Li Regular",
                "Noto Sans Khmer UI Regular",
                "Noto Sans Lao UI Regular",
                "Noto Sans Lepcha Regular",
                "Noto Sans Limbu Regular",
                "Noto Sans Lisu Regular",
                "Noto Sans Malayalam UI Regular",
                "Noto Sans Mandaic Regular",
                "Noto Sans Mongolian Regular",
                "Noto Sans Myanmar UI Regular",
                "Noto Sans New Tai Lue Regular",
                "Noto Sans NKo Regular",
                "Noto Sans Ol Chiki Regular",
                "Noto Sans Oriya UI Regular",
                "Noto Sans Osage Regular",
                "Noto Sans Osmanya Regular",
                "Noto Sans Samaritan Regular",
                "Noto Sans Saurashtra Regular",
                "Noto Sans Shavian Regular",
                "Noto Sans Sinhala UI Regular",
                "Noto Sans Sinhala Regular",
                "Noto Sans Sundanese Regular",
                "Noto Sans Symbols Regular",
                "Noto Sans Symbols2 Regular",
                "Noto Sans Syriac Eastern Regular",
                "Noto Sans Syriac Estrangela Regular",
                "Noto Sans Syriac Western Regular",
                "Noto Sans Tagalog Regular",
                "Noto Sans Tagbanwa Regular",
                "Noto Sans Tai Le Regular",
                "Noto Sans Tai Tham Regular",
                "Noto Sans Tai Viet Regular",
                "Noto Sans Tamil UI Regular",
                "Noto Sans Telugu UI Regular",
                "Noto Sans Thaana Regular",
                "Noto Sans Thai UI Regular",
                "Noto Sans Tibetan Regular",
                "Noto Sans Tifinagh Regular",
                "Noto Sans Vai Regular",
                "Noto Sans Yi Regular",
                "Noto Sans Arabic UI Regular",
                "Noto Emoji Regular",
                "Noto Naskh Arabic UI Regular",
                "DejaVu Sans Book",
                "HanaMinA Regular", "HanaMinB Regular",
                "Unifont Medium", "unifont Medium", "Unifont Upper Medium";

@fallback_bold: "Noto Sans Bold",
                "Noto Sans CJK JP Bold",
                "Noto Sans Armenian Bold",
                "Noto Sans Bengali UI Bold",
                "Noto Sans Cham Bold",
                "Noto Sans Cherokee Bold",
                "Noto Sans Devanagari UI Bold",
                "Noto Sans Ethiopic Bold",
                "Noto Sans Georgian Bold",
                "Noto Sans Gujarati UI Bold",
                "Noto Sans Gurmukhi UI Bold",
                "Noto Sans Hebrew Bold",
                "Noto Sans Kannada UI Bold",
                "Noto Sans Khmer UI Bold",
                "Noto Sans Lao UI Bold",
                "Noto Sans Malayalam UI Bold",
                "Noto Sans Myanmar UI Bold",
                "Noto Sans Oriya UI Bold",
                "Noto Sans Sinhala UI Bold",
                "Noto Sans Sinhala Bold",
                "Noto Sans Symbols Bold",
                "Noto Sans Tamil UI Bold",
                "Noto Sans Telugu UI Bold",
                "Noto Sans Thaana Bold",
                "Noto Sans Thai UI Bold",
                "Noto Sans Tibetan Bold",
                "Noto Sans Arabic UI Bold",
                "Noto Naskh Arabic UI Bold",
                "DejaVu Sans Bold";

@sans_lt:           "Open Sans Regular","DejaVu Sans Book",@fallback_bold,@fallback,@fallback;
@sans_lt_italic:    "Open Sans Italic","DejaVu Sans Italic","Noto Sans Italic",@fallback;
@sans:              "Open Sans Semibold","DejaVu Sans Book",@fallback;
@sans_italic:       "Open Sans Semibold Italic","DejaVu Sans Italic","Noto Sans Italic",@fallback;
@sans_bold:         "Open Sans Bold","DejaVu Sans Bold",@fallback_bold,@fallback;
@sans_bold_italic:  "Open Sans Bold Italic","DejaVu Sans Bold Italic","Noto Sans Bold Italic",@fallback_bold,@fallback;

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              mix(#fffcc6, #FFF, 50%);
@water:             mix(#77bbf6, #FFF, 50%);
@grass:             #ccf749;
@beach:             #ffda85;
@park:              #aef166;
@cemetery:          #D6DED2;
@wooded:            mix(#76d11c, #FFF, 50%);
@agriculture:       #F2E8B6;

@building:          #b5adad;
@hospital:          rgb(229,198,195);
@school:            #FFF5CC;
@sports:            #B8E6B8;

@residential:       @land * 0.98;
@commercial:        @land * 0.97;
@industrial:        @land * 0.96;
@parking:           #EEE;

@glacier:          #DDECEC;
@glacier_low:      #9BCCFE;
/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_line:     #E65C5C;
@motorway_fill:     lighten(@motorway_line,10%);
@motorway_case:     @motorway_line * 0.9;

@trunk_line:        #E68A5C;
@trunk_fill:        lighten(@trunk_line,10%);
@trunk_case:        @trunk_line * 0.9;

@primary_line:      #FFC859;
@primary_fill:      lighten(@primary_line,10%);
@primary_case:      @primary_line * 0.9;

@secondary_line:    #FFE873;
@secondary_fill:    lighten(@secondary_line,10%);
@secondary_case:    @secondary_line * 0.9;

@standard_line:     @land * 0.85;
@standard_fill:     #fff;
@standard_case:     @land * 0.9;

@pedestrian_line:   @standard_line;
@pedestrian_fill:   #FAFAF5;
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_fill:        #FAFAF5;
@cycle_case:        @land;

@rail_line:         #999;
@rail_fill:         #fff;
@rail_case:         @land;

@aeroway:           #ddd;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #af74be;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(#fff,34%);

@country_text:      #435;
@country_halo:      @place_halo;

@state_text:        #546;
@state_halo:        @place_halo;

@city_text:         #444;
@city_halo:         @place_halo;

@town_text:         #666;
@town_halo:         @place_halo;

@poi_text:          #888;

@road_text:         #777;
@road_halo:         #fff;

@other_text:        #888;
@other_halo:        @place_halo;

@locality_text:     #aaa;
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #888;
@village_halo:      @place_halo;

/* ****************************************************************** */



