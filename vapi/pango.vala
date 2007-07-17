[CCode (cprefix = "Pango", lower_case_cprefix = "pango_", cheader_filename = "pango/pango.h")]
namespace Pango {
	[CCode (cprefix = "PANGO_ALIGN_")]
	public enum Alignment {
		LEFT,
		CENTER,
		RIGHT,
	}
	[CCode (cprefix = "PANGO_ATTR_")]
	public enum AttrType {
		INVALID,
		LANGUAGE,
		FAMILY,
		STYLE,
		WEIGHT,
		VARIANT,
		STRETCH,
		SIZE,
		FONT_DESC,
		FOREGROUND,
		BACKGROUND,
		UNDERLINE,
		STRIKETHROUGH,
		RISE,
		SHAPE,
		SCALE,
		FALLBACK,
		LETTER_SPACING,
		UNDERLINE_COLOR,
		STRIKETHROUGH_COLOR,
		ABSOLUTE_SIZE,
		GRAVITY,
		GRAVITY_HINT,
	}
	[CCode (cprefix = "PANGO_COVERAGE_")]
	public enum CoverageLevel {
		NONE,
		FALLBACK,
		APPROXIMATE,
		EXACT,
	}
	[CCode (cprefix = "PANGO_DIRECTION_")]
	public enum Direction {
		LTR,
		RTL,
		TTB_LTR,
		TTB_RTL,
		WEAK_LTR,
		WEAK_RTL,
		NEUTRAL,
	}
	[CCode (cprefix = "PANGO_ELLIPSIZE_")]
	public enum EllipsizeMode {
		NONE,
		START,
		MIDDLE,
		END,
	}
	[CCode (cprefix = "PANGO_FONT_MASK_")]
	public enum FontMask {
		FAMILY,
		STYLE,
		VARIANT,
		WEIGHT,
		STRETCH,
		SIZE,
		GRAVITY,
	}
	[CCode (cprefix = "PANGO_GRAVITY_")]
	public enum Gravity {
		SOUTH,
		EAST,
		NORTH,
		WEST,
		AUTO,
	}
	[CCode (cprefix = "PANGO_GRAVITY_HINT_")]
	public enum GravityHint {
		NATURAL,
		STRONG,
		LINE,
	}
	[CCode (cprefix = "PANGO_RENDER_PART_")]
	public enum RenderPart {
		FOREGROUND,
		BACKGROUND,
		UNDERLINE,
		STRIKETHROUGH,
	}
	[CCode (cprefix = "PANGO_SCRIPT_")]
	public enum Script {
		INVALID_CODE,
		COMMON,
		INHERITED,
		ARABIC,
		ARMENIAN,
		BENGALI,
		BOPOMOFO,
		CHEROKEE,
		COPTIC,
		CYRILLIC,
		DESERET,
		DEVANAGARI,
		ETHIOPIC,
		GEORGIAN,
		GOTHIC,
		GREEK,
		GUJARATI,
		GURMUKHI,
		HAN,
		HANGUL,
		HEBREW,
		HIRAGANA,
		KANNADA,
		KATAKANA,
		KHMER,
		LAO,
		LATIN,
		MALAYALAM,
		MONGOLIAN,
		MYANMAR,
		OGHAM,
		OLD_ITALIC,
		ORIYA,
		RUNIC,
		SINHALA,
		SYRIAC,
		TAMIL,
		TELUGU,
		THAANA,
		THAI,
		TIBETAN,
		CANADIAN_ABORIGINAL,
		YI,
		TAGALOG,
		HANUNOO,
		BUHID,
		TAGBANWA,
		BRAILLE,
		CYPRIOT,
		LIMBU,
		OSMANYA,
		SHAVIAN,
		LINEAR_B,
		TAI_LE,
		UGARITIC,
		NEW_TAI_LUE,
		BUGINESE,
		GLAGOLITIC,
		TIFINAGH,
		SYLOTI_NAGRI,
		OLD_PERSIAN,
		KHAROSHTHI,
		UNKNOWN,
		BALINESE,
		CUNEIFORM,
		PHOENICIAN,
		PHAGS_PA,
		NKO,
	}
	[CCode (cprefix = "PANGO_STRETCH_")]
	public enum Stretch {
		ULTRA_CONDENSED,
		EXTRA_CONDENSED,
		CONDENSED,
		SEMI_CONDENSED,
		NORMAL,
		SEMI_EXPANDED,
		EXPANDED,
		EXTRA_EXPANDED,
		ULTRA_EXPANDED,
	}
	[CCode (cprefix = "PANGO_STYLE_")]
	public enum Style {
		NORMAL,
		OBLIQUE,
		ITALIC,
	}
	[CCode (cprefix = "PANGO_TAB_")]
	public enum TabAlign {
		LEFT,
	}
	[CCode (cprefix = "PANGO_UNDERLINE_")]
	public enum Underline {
		NONE,
		SINGLE,
		DOUBLE,
		LOW,
		ERROR,
	}
	[CCode (cprefix = "PANGO_VARIANT_")]
	public enum Variant {
		NORMAL,
		SMALL_CAPS,
	}
	[CCode (cprefix = "PANGO_WEIGHT_")]
	public enum Weight {
		ULTRALIGHT,
		LIGHT,
		NORMAL,
		SEMIBOLD,
		BOLD,
		ULTRABOLD,
		HEAVY,
	}
	[CCode (cprefix = "PANGO_WRAP_")]
	public enum WrapMode {
		WORD,
		CHAR,
		WORD_CHAR,
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class CairoFontMap : GLib.Object {
		public weak Pango.Context create_context ();
		public static weak Pango.FontMap get_default ();
		public pointer get_font_type ();
		public double get_resolution ();
		public static GLib.Type get_type ();
		public CairoFontMap ();
		public CairoFontMap.for_font_type (pointer fonttype);
		public void set_resolution (double dpi);
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class Context : GLib.Object {
		public Pango.Direction get_base_dir ();
		public Pango.Gravity get_base_gravity ();
		public weak Pango.FontDescription get_font_description ();
		public weak Pango.FontMap get_font_map ();
		public Pango.Gravity get_gravity ();
		public Pango.GravityHint get_gravity_hint ();
		public weak Pango.Language get_language ();
		public Pango.Matrix get_matrix ();
		public weak Pango.FontMetrics get_metrics (Pango.FontDescription desc, Pango.Language language);
		public static GLib.Type get_type ();
		[NoArrayLength]
		public void list_families (Pango.FontFamily[] families, int n_families);
		public weak Pango.Font load_font (Pango.FontDescription desc);
		public weak Pango.Fontset load_fontset (Pango.FontDescription desc, Pango.Language language);
		public void set_base_dir (Pango.Direction direction);
		public void set_base_gravity (Pango.Gravity gravity);
		public void set_font_description (Pango.FontDescription desc);
		public void set_gravity_hint (Pango.GravityHint hint);
		public void set_language (Pango.Language language);
		public void set_matrix (out Pango.Matrix matrix);
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class Font : GLib.Object {
		public weak Pango.FontDescription describe ();
		public weak Pango.FontDescription describe_with_absolute_size ();
		[NoArrayLength]
		public static void descriptions_free (Pango.FontDescription[] descs, int n_descs);
		public weak Pango.EngineShape find_shaper (Pango.Language language, uint ch);
		public weak Pango.Coverage get_coverage (Pango.Language language);
		public weak Pango.FontMap get_font_map ();
		public void get_glyph_extents (uint glyph, out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public weak Pango.FontMetrics get_metrics (Pango.Language language);
		public static GLib.Type get_type ();
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class Fontset : GLib.Object {
		public void @foreach (Pango.FontsetForeachFunc func, pointer data);
		public weak Pango.Font get_font (uint wc);
		public weak Pango.FontMetrics get_metrics ();
		public static GLib.Type get_type ();
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class FontFace : GLib.Object {
		public weak Pango.FontDescription describe ();
		public weak string get_face_name ();
		public static GLib.Type get_type ();
		public bool is_synthesized ();
		[NoArrayLength]
		public void list_sizes (int[] sizes, int n_sizes);
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class FontFamily : GLib.Object {
		public weak string get_name ();
		public static GLib.Type get_type ();
		public bool is_monospace ();
		[NoArrayLength]
		public void list_faces (Pango.FontFace[] faces, int n_faces);
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class FontMap : GLib.Object {
		public static GLib.Type get_type ();
		[NoArrayLength]
		public void list_families (Pango.FontFamily[] families, int n_families);
		public weak Pango.Font load_font (Pango.Context context, Pango.FontDescription desc);
		public weak Pango.Fontset load_fontset (Pango.Context context, Pango.FontDescription desc, Pango.Language language);
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class Layout : GLib.Object {
		public void context_changed ();
		public weak Pango.Layout copy ();
		public Pango.Alignment get_alignment ();
		public weak Pango.AttrList get_attributes ();
		public bool get_auto_dir ();
		public weak Pango.Context get_context ();
		public void get_cursor_pos (int index_, out Pango.Rectangle strong_pos, out Pango.Rectangle weak_pos);
		public Pango.EllipsizeMode get_ellipsize ();
		public void get_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public weak Pango.FontDescription get_font_description ();
		public int get_indent ();
		public weak Pango.LayoutIter get_iter ();
		public bool get_justify ();
		public weak Pango.LayoutLine get_line (int line);
		public int get_line_count ();
		public weak Pango.LayoutLine get_line_readonly (int line);
		public weak GLib.SList get_lines ();
		public weak GLib.SList get_lines_readonly ();
		[NoArrayLength]
		public void get_log_attrs (Pango.LogAttr[] attrs, int n_attrs);
		public void get_pixel_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public void get_pixel_size (int width, int height);
		public bool get_single_paragraph_mode ();
		public void get_size (int width, int height);
		public int get_spacing ();
		public weak Pango.TabArray get_tabs ();
		public weak string get_text ();
		public static GLib.Type get_type ();
		public int get_unknown_glyphs_count ();
		public int get_width ();
		public Pango.WrapMode get_wrap ();
		public void index_to_line_x (int index_, bool trailing, int line, int x_pos);
		public void index_to_pos (int index_, out Pango.Rectangle pos);
		public bool is_ellipsized ();
		public bool is_wrapped ();
		public void move_cursor_visually (bool strong, int old_index, int old_trailing, int direction, int new_index, int new_trailing);
		public Layout (Pango.Context context);
		public void set_alignment (Pango.Alignment alignment);
		public void set_attributes (Pango.AttrList attrs);
		public void set_auto_dir (bool auto_dir);
		public void set_ellipsize (Pango.EllipsizeMode ellipsize);
		public void set_font_description (Pango.FontDescription desc);
		public void set_indent (int indent);
		public void set_justify (bool justify);
		public void set_markup (string markup, int length);
		public void set_markup_with_accel (string markup, int length, unichar accel_marker, unichar accel_char);
		public void set_single_paragraph_mode (bool setting);
		public void set_spacing (int spacing);
		public void set_tabs (Pango.TabArray tabs);
		public void set_text (string text, int length);
		public void set_width (int width);
		public void set_wrap (Pango.WrapMode wrap);
		public bool xy_to_index (int x, int y, int index_, int trailing);
	}
	[CCode (cheader_filename = "pango/pango.h")]
	public class Renderer : GLib.Object {
		public Pango.Matrix matrix;
		public void activate ();
		public void deactivate ();
		public virtual void draw_error_underline (int x, int y, int width, int height);
		public virtual void draw_glyph (Pango.Font font, uint glyph, double x, double y);
		public virtual void draw_glyphs (Pango.Font font, Pango.GlyphString glyphs, int x, int y);
		public void draw_layout (Pango.Layout layout, int x, int y);
		public void draw_layout_line (Pango.LayoutLine line, int x, int y);
		public virtual void draw_rectangle (Pango.RenderPart part, int x, int y, int width, int height);
		public virtual void draw_trapezoid (Pango.RenderPart part, double y1_, double x11, double x21, double y2, double x12, double x22);
		public Pango.Color get_color (Pango.RenderPart part);
		public Pango.Matrix get_matrix ();
		public static GLib.Type get_type ();
		public virtual void part_changed (Pango.RenderPart part);
		public void set_color (Pango.RenderPart part, out Pango.Color color);
		public void set_matrix (out Pango.Matrix matrix);
	}
	[ReferenceType]
	public struct Analysis {
		public weak Pango.EngineShape shape_engine;
		public weak Pango.EngineLang lang_engine;
		public weak Pango.Font font;
		public uchar level;
		public uchar gravity;
		public uchar @flags;
		public uchar script;
		public weak Pango.Language language;
		public weak GLib.SList extra_attrs;
	}
	[ReferenceType]
	public struct AttrClass {
		public Pango.AttrType type;
	}
	[ReferenceType]
	public struct AttrColor {
		public weak Pango.Attribute attr;
		public Pango.Color color;
	}
	[ReferenceType]
	public struct AttrFloat {
		public weak Pango.Attribute attr;
		public double value;
	}
	[ReferenceType]
	public struct AttrFontDesc {
		public weak Pango.Attribute attr;
		public weak Pango.FontDescription desc;
		public AttrFontDesc (Pango.FontDescription desc);
	}
	[ReferenceType]
	public struct AttrInt {
		public weak Pango.Attribute attr;
		public int value;
	}
	[ReferenceType]
	public struct AttrIterator {
		public weak Pango.AttrIterator copy ();
		public void destroy ();
		public weak Pango.Attribute get (Pango.AttrType type);
		public weak GLib.SList get_attrs ();
		public void get_font (Pango.FontDescription desc, Pango.Language language, GLib.SList extra_attrs);
		public bool next ();
		public void range (int start, int end);
	}
	[ReferenceType]
	public struct AttrLanguage {
		public weak Pango.Attribute attr;
		public weak Pango.Language value;
		public AttrLanguage (Pango.Language language);
	}
	[ReferenceType]
	public struct AttrList {
		public void change (Pango.Attribute attr);
		public weak Pango.AttrList copy ();
		public weak Pango.AttrList filter (Pango.AttrFilterFunc func, pointer data);
		public weak Pango.AttrIterator get_iterator ();
		public static GLib.Type get_type ();
		public void insert (Pango.Attribute attr);
		public void insert_before (Pango.Attribute attr);
		public AttrList ();
		public weak Pango.AttrList @ref ();
		public void splice (Pango.AttrList other, int pos, int len);
		public void unref ();
	}
	[ReferenceType]
	public struct AttrShape {
		public weak Pango.Attribute attr;
		public Pango.Rectangle ink_rect;
		public Pango.Rectangle logical_rect;
		public pointer data;
		public Pango.AttrDataCopyFunc copy_func;
		public GLib.DestroyNotify destroy_func;
		public AttrShape (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public AttrShape.with_data (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect, pointer data, Pango.AttrDataCopyFunc copy_func, GLib.DestroyNotify destroy_func);
	}
	[ReferenceType]
	public struct AttrSize {
		public weak Pango.Attribute attr;
		public int size;
		public uint absolute;
		public AttrSize (int size);
	}
	[ReferenceType]
	public struct AttrString {
		public weak Pango.Attribute attr;
		public weak string value;
	}
	[ReferenceType]
	public struct Attribute {
		public pointer klass;
		public uint start_index;
		public uint end_index;
		public weak Pango.Attribute copy ();
		public void destroy ();
		public bool equal (Pango.Attribute attr2);
	}
	public struct Color {
		public ushort red;
		public ushort green;
		public ushort blue;
		[InstanceByReference]
		public Pango.Color copy ();
		[InstanceByReference]
		public void free ();
		public static GLib.Type get_type ();
		[InstanceByReference]
		public bool parse (string spec);
		[InstanceByReference]
		public weak string to_string ();
	}
	[ReferenceType]
	public struct Coverage {
		public weak Pango.Coverage copy ();
		[NoArrayLength]
		public static weak Pango.Coverage from_bytes (uchar[] bytes, int n_bytes);
		public Pango.CoverageLevel get (int index_);
		public void max (Pango.Coverage other);
		public Coverage ();
		public weak Pango.Coverage @ref ();
		public void set (int index_, Pango.CoverageLevel level);
		[NoArrayLength]
		public void to_bytes (uchar[] bytes, int n_bytes);
		public void unref ();
	}
	[ReferenceType]
	public struct EngineLang {
	}
	[ReferenceType]
	public struct EngineShape {
	}
	[ReferenceType]
	public struct FontDescription {
		public bool better_match (Pango.FontDescription old_match, Pango.FontDescription new_match);
		public weak Pango.FontDescription copy ();
		public weak Pango.FontDescription copy_static ();
		public bool equal (Pango.FontDescription desc2);
		public void free ();
		public static weak Pango.FontDescription from_string (string str);
		public weak string get_family ();
		public Pango.Gravity get_gravity ();
		public Pango.FontMask get_set_fields ();
		public int get_size ();
		public bool get_size_is_absolute ();
		public Pango.Stretch get_stretch ();
		public Pango.Style get_style ();
		public static GLib.Type get_type ();
		public Pango.Variant get_variant ();
		public Pango.Weight get_weight ();
		public uint hash ();
		public void merge (Pango.FontDescription desc_to_merge, bool replace_existing);
		public void merge_static (Pango.FontDescription desc_to_merge, bool replace_existing);
		public FontDescription ();
		public void set_absolute_size (double size);
		public void set_family (string family);
		public void set_family_static (string family);
		public void set_gravity (Pango.Gravity gravity);
		public void set_size (int size);
		public void set_stretch (Pango.Stretch stretch);
		public void set_style (Pango.Style style);
		public void set_variant (Pango.Variant variant);
		public void set_weight (Pango.Weight weight);
		public weak string to_filename ();
		public weak string to_string ();
		public void unset_fields (Pango.FontMask to_unset);
	}
	[ReferenceType]
	public struct FontMetrics {
		public int get_approximate_char_width ();
		public int get_approximate_digit_width ();
		public int get_ascent ();
		public int get_descent ();
		public int get_strikethrough_position ();
		public int get_strikethrough_thickness ();
		public static GLib.Type get_type ();
		public int get_underline_position ();
		public int get_underline_thickness ();
		public weak Pango.FontMetrics @ref ();
		public void unref ();
	}
	[ReferenceType]
	public struct GlyphGeometry {
		public int width;
		public int x_offset;
		public int y_offset;
	}
	[ReferenceType]
	public struct GlyphInfo {
		public uint glyph;
		public weak Pango.GlyphGeometry geometry;
		public weak Pango.GlyphVisAttr attr;
	}
	[ReferenceType]
	public struct GlyphItem {
		public weak Pango.Item item;
		public weak Pango.GlyphString glyphs;
		public weak GLib.SList apply_attrs (string text, Pango.AttrList list);
		public void free ();
		public void letter_space (string text, Pango.LogAttr log_attrs, int letter_spacing);
		public weak Pango.GlyphItem split (string text, int split_index);
	}
	[ReferenceType]
	public struct GlyphString {
		public int num_glyphs;
		public weak Pango.GlyphInfo glyphs;
		public int log_clusters;
		public weak Pango.GlyphString copy ();
		public void extents (Pango.Font font, out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public void extents_range (int start, int end, Pango.Font font, out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public void free ();
		public void get_logical_widths (string text, int length, int embedding_level, int logical_widths);
		public static GLib.Type get_type ();
		public int get_width ();
		public void index_to_x (string text, int length, Pango.Analysis analysis, int index_, bool trailing, int x_pos);
		public GlyphString ();
		public void set_size (int new_len);
		public void x_to_index (string text, int length, Pango.Analysis analysis, int x_pos, int index_, int trailing);
	}
	[ReferenceType]
	public struct GlyphVisAttr {
		public uint is_cluster_start;
	}
	[ReferenceType]
	public struct Item {
		public int offset;
		public int length;
		public int num_chars;
		public weak Pango.Analysis analysis;
		public weak Pango.Item copy ();
		public void free ();
		public static GLib.Type get_type ();
		public Item ();
		public weak Pango.Item split (int split_index, int split_offset);
	}
	[ReferenceType]
	public struct Language {
		public static weak Pango.Language from_string (string language);
		public static weak Pango.Language get_default ();
		public weak string get_sample_string ();
		public static GLib.Type get_type ();
		public bool includes_script (Pango.Script script);
		public bool matches (string range_list);
	}
	[ReferenceType]
	public struct LayoutIter {
		public bool at_last_line ();
		public void free ();
		public int get_baseline ();
		public void get_char_extents (out Pango.Rectangle logical_rect);
		public void get_cluster_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public int get_index ();
		public void get_layout_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public weak Pango.LayoutLine get_line ();
		public void get_line_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public weak Pango.LayoutLine get_line_readonly ();
		public void get_line_yrange (int y0_, int y1_);
		public weak Pango.LayoutRun get_run ();
		public void get_run_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public weak Pango.LayoutRun get_run_readonly ();
		public static GLib.Type get_type ();
		public bool next_char ();
		public bool next_cluster ();
		public bool next_line ();
		public bool next_run ();
	}
	[ReferenceType]
	public struct LayoutLine {
		public weak Pango.Layout layout;
		public int start_index;
		public int length;
		public weak GLib.SList runs;
		public uint is_paragraph_start;
		public uint resolved_dir;
		public void get_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public void get_pixel_extents (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
		public static GLib.Type get_type ();
		[NoArrayLength]
		public void get_x_ranges (int start_index, int end_index, int[] ranges, int n_ranges);
		public void index_to_x (int index_, bool trailing, int x_pos);
		public weak Pango.LayoutLine @ref ();
		public void unref ();
		public bool x_to_index (int x_pos, int index_, int trailing);
	}
	[ReferenceType]
	public struct LayoutRun {
		public weak Pango.Item item;
		public weak Pango.GlyphString glyphs;
	}
	[ReferenceType]
	public struct LogAttr {
		public uint is_line_break;
		public uint is_mandatory_break;
		public uint is_char_break;
		public uint is_white;
		public uint is_cursor_position;
		public uint is_word_start;
		public uint is_word_end;
		public uint is_sentence_boundary;
		public uint is_sentence_start;
		public uint is_sentence_end;
		public uint backspace_deletes_character;
		public uint is_expandable_space;
	}
	public struct Matrix {
		public double xx;
		public double xy;
		public double yx;
		public double yy;
		public double x0;
		public double y0;
		[InstanceByReference]
		public void concat (out Pango.Matrix new_matrix);
		[InstanceByReference]
		public Pango.Matrix copy ();
		[InstanceByReference]
		public void free ();
		[InstanceByReference]
		public double get_font_scale_factor ();
		public static GLib.Type get_type ();
		[InstanceByReference]
		public void rotate (double degrees);
		[InstanceByReference]
		public void scale (double scale_x, double scale_y);
		[InstanceByReference]
		public void transform_distance (double dx, double dy);
		[InstanceByReference]
		public void transform_pixel_rectangle (out Pango.Rectangle rect);
		[InstanceByReference]
		public void transform_point (double x, double y);
		[InstanceByReference]
		public void transform_rectangle (out Pango.Rectangle rect);
		[InstanceByReference]
		public void translate (double tx, double ty);
	}
	public struct Rectangle {
		public int x;
		public int y;
		public int width;
		public int height;
	}
	[ReferenceType]
	public struct ScriptIter {
		public void free ();
		public void get_range (string start, string end, Pango.Script script);
		public ScriptIter (string text, int length);
		public bool next ();
	}
	[ReferenceType]
	public struct TabArray {
		public weak Pango.TabArray copy ();
		public void free ();
		public bool get_positions_in_pixels ();
		public int get_size ();
		public void get_tab (int tab_index, Pango.TabAlign alignment, int location);
		public void get_tabs (Pango.TabAlign alignments, int locations);
		public static GLib.Type get_type ();
		public TabArray (int initial_size, bool positions_in_pixels);
		public TabArray.with_positions (int size, bool positions_in_pixels, Pango.TabAlign first_alignment, ...);
		public void resize (int new_size);
		public void set_tab (int tab_index, Pango.TabAlign alignment, int location);
	}
	[ReferenceType]
	public struct Win32FontCache {
		public void free ();
		public pointer load (pointer logfont);
		public pointer loadw (pointer logfont);
		public Win32FontCache ();
		public void unload (pointer hfont);
	}
	[ReferenceType]
	public struct Attr {
		public static weak Pango.Attribute background_new (ushort red, ushort green, ushort blue);
		public static weak Pango.Attribute fallback_new (bool enable_fallback);
		public static weak Pango.Attribute family_new (string family);
		public static weak Pango.Attribute foreground_new (ushort red, ushort green, ushort blue);
		public static weak Pango.Attribute gravity_hint_new (Pango.GravityHint hint);
		public static weak Pango.Attribute gravity_new (Pango.Gravity gravity);
		public static weak Pango.Attribute letter_spacing_new (int letter_spacing);
		public static weak Pango.Attribute rise_new (int rise);
		public static weak Pango.Attribute scale_new (double scale_factor);
		public static weak Pango.Attribute stretch_new (Pango.Stretch stretch);
		public static weak Pango.Attribute strikethrough_color_new (ushort red, ushort green, ushort blue);
		public static weak Pango.Attribute strikethrough_new (bool strikethrough);
		public static weak Pango.Attribute style_new (Pango.Style style);
		public static Pango.AttrType type_register (string name);
		public static weak Pango.Attribute underline_color_new (ushort red, ushort green, ushort blue);
		public static weak Pango.Attribute underline_new (Pango.Underline underline);
		public static weak Pango.Attribute variant_new (Pango.Variant variant);
		public static weak Pango.Attribute weight_new (Pango.Weight weight);
	}
	[ReferenceType]
	public struct Cairo {
		public static pointer context_get_font_options (Pango.Context context);
		public static double context_get_resolution (Pango.Context context);
		public static Pango.CairoShapeRendererFunc context_get_shape_renderer (Pango.Context context, pointer data);
		public static void context_set_font_options (Pango.Context context, pointer options);
		public static void context_set_resolution (Pango.Context context, double dpi);
		public static void context_set_shape_renderer (Pango.Context context, Pango.CairoShapeRendererFunc func, pointer data, GLib.DestroyNotify dnotify);
		public static weak Pango.Layout create_layout (Cairo.Context cr);
		public static void error_underline_path (Cairo.Context cr, double x, double y, double width, double height);
		public static pointer font_get_scaled_font (Pango.Font font);
		public static void glyph_string_path (Cairo.Context cr, Pango.Font font, Pango.GlyphString glyphs);
		public static void layout_line_path (Cairo.Context cr, Pango.LayoutLine line);
		public static void layout_path (Cairo.Context cr, Pango.Layout layout);
		public static void show_error_underline (Cairo.Context cr, double x, double y, double width, double height);
		public static void show_glyph_string (Cairo.Context cr, Pango.Font font, Pango.GlyphString glyphs);
		public static void show_layout (Cairo.Context cr, Pango.Layout layout);
		public static void show_layout_line (Cairo.Context cr, Pango.LayoutLine line);
		public static void update_context (Cairo.Context cr, Pango.Context context);
		public static void update_layout (Cairo.Context cr, Pango.Layout layout);
	}
	[ReferenceType]
	public struct Units {
		public static int from_double (double d);
		public static double to_double (int i);
	}
	[ReferenceType]
	public struct Version {
		public static weak string check (int required_major, int required_minor, int required_micro);
		public static weak string string ();
	}
	public static delegate pointer AttrDataCopyFunc (pointer data);
	public static delegate bool AttrFilterFunc (Pango.Attribute attribute, pointer data);
	public static delegate void CairoShapeRendererFunc (Cairo.Context cr, Pango.AttrShape attr, bool do_path, pointer data);
	public static delegate bool FontsetForeachFunc (Pango.Fontset fontset, Pango.Font font, pointer data);
	public static void extents_to_pixels (out Pango.Rectangle ink_rect, out Pango.Rectangle logical_rect);
	public static Pango.Direction find_base_dir (string text, int length);
	public static void find_paragraph_boundary (string text, int length, int paragraph_delimiter_index, int next_paragraph_start);
	public static void get_log_attrs (string text, int length, int level, Pango.Language language, Pango.LogAttr log_attrs, int attrs_len);
	public static Pango.Gravity gravity_get_for_matrix (out Pango.Matrix matrix);
	public static Pango.Gravity gravity_get_for_script (Pango.Script script, Pango.Gravity base_gravity, Pango.GravityHint hint);
	public static double gravity_to_rotation (Pango.Gravity gravity);
	public static bool is_zero_width (unichar ch);
	public static weak GLib.List itemize_with_base_dir (Pango.Context context, Pango.Direction base_dir, string text, int start_index, int length, Pango.AttrList attrs, Pango.AttrIterator cached_iter);
	public static bool parse_enum (GLib.Type type, string str, int value, bool warn, string possible_values);
	public static bool parse_markup (string markup_text, int length, unichar accel_marker, Pango.AttrList attr_list, string text, unichar accel_char, GLib.Error error);
	public static bool parse_stretch (string str, Pango.Stretch stretch, bool warn);
	public static bool parse_style (string str, Pango.Style style, bool warn);
	public static bool parse_variant (string str, Pango.Variant variant, bool warn);
	public static bool parse_weight (string str, Pango.Weight weight, bool warn);
	public static void quantize_line_geometry (int thickness, int position);
	public static int read_line (GLib.FileStream stream, GLib.String str);
	public static weak GLib.List reorder_items (GLib.List logical_items);
	public static bool scan_int (string pos, int @out);
	public static bool scan_string (string pos, GLib.String @out);
	public static bool scan_word (string pos, GLib.String @out);
	public static Pango.Script script_for_unichar (unichar ch);
	public static weak Pango.Language script_get_sample_language (Pango.Script script);
	public static bool skip_space (string pos);
	public static weak string split_file_list (string str);
	public static weak string trim_string (string str);
	public static Pango.Direction unichar_direction (unichar ch);
}
