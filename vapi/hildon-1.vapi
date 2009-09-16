/* hildon-1.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Hildon", lower_case_cprefix = "hildon_")]
namespace Hildon {
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class Banner : Gtk.Window, Atk.Implementor, Gtk.Buildable {
		public void set_fraction (double fraction);
		public void set_icon (string icon_name);
		public void set_icon_from_file (string icon_file);
		public void set_markup (string markup);
		public void set_text (string text);
		public void set_timeout (uint timeout);
		public static unowned Gtk.Widget show_animation (Gtk.Widget widget, string animation_name, string text);
		public static unowned Gtk.Widget show_information (Gtk.Widget widget, string icon_name, string text);
		public static unowned Gtk.Widget show_information_with_markup (Gtk.Widget widget, string icon_name, string markup);
		public static unowned Gtk.Widget show_informationf (Gtk.Widget widget, string icon_name, string format);
		public static unowned Gtk.Widget show_progress (Gtk.Widget widget, Gtk.ProgressBar bar, string text);
		[NoAccessorMethod]
		public bool is_timed { get; construct; }
		[NoAccessorMethod]
		public Gtk.Window parent_window { owned get; construct; }
		[NoAccessorMethod]
		public uint timeout { get; construct; }
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class BreadCrumbTrail : Gtk.Container, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public BreadCrumbTrail ();
		public void clear ();
		public void pop ();
		public void push (Hildon.BreadCrumb item, void* id, GLib.DestroyNotify notify);
		public void push_icon (string text, Gtk.Widget icon, void* id, GLib.DestroyNotify destroy);
		public void push_text (string text, void* id, GLib.DestroyNotify notify);
		public virtual signal bool crumb_clicked (void* id);
		public virtual signal void move_parent ();
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class Calendar : Gtk.Widget, Atk.Implementor, Gtk.Buildable {
		[CCode (array_length = false)]
		public weak int[] day_month;
		public Hildon.CalendarDisplayOptions display_flags;
		public int focus_col;
		public int focus_row;
		public weak Gdk.GC gc;
		[CCode (array_length = false)]
		public weak char[] grow_space;
		public weak Gtk.Style header_style;
		public int highlight_col;
		public int highlight_row;
		public weak Gtk.Style label_style;
		[CCode (array_length = false)]
		public weak int[] marked_date;
		[CCode (array_length = false)]
		public weak Gdk.Color[] marked_date_color;
		public int num_marked_dates;
		public int selected_day;
		public weak Gdk.GC xor_gc;
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public Calendar ();
		public void clear_marks ();
		public void freeze ();
		public void get_date (uint year, uint month, uint day);
		public Hildon.CalendarDisplayOptions get_display_options ();
		public bool mark_day (uint day);
		public void select_day (uint day);
		public bool select_month (uint month, uint year);
		public void set_display_options (Hildon.CalendarDisplayOptions flags);
		public void thaw ();
		public bool unmark_day (uint day);
		[NoAccessorMethod]
		public int day { get; set; }
		[NoAccessorMethod]
		public int max_year { get; set; }
		[NoAccessorMethod]
		public int min_year { get; set; }
		[NoAccessorMethod]
		public int month { get; set; }
		[NoAccessorMethod]
		public bool no_month_change { get; set; }
		[NoAccessorMethod]
		public bool show_day_names { get; set; }
		[NoAccessorMethod]
		public bool show_heading { get; set; }
		[NoAccessorMethod]
		public bool show_week_numbers { get; set; }
		[NoAccessorMethod]
		public int week_start { get; set; }
		[NoAccessorMethod]
		public int year { get; set; }
		public virtual signal void day_selected ();
		public virtual signal void day_selected_double_click ();
		public virtual signal void erroneous_date ();
		public virtual signal void month_changed ();
		public virtual signal void next_month ();
		public virtual signal void next_year ();
		public virtual signal void prev_month ();
		public virtual signal void prev_year ();
		public virtual signal void selected_date ();
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class CalendarPopup : Gtk.Dialog, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public CalendarPopup (Gtk.Window parent, uint year, uint month, uint day);
		public void get_date (uint year, uint month, uint day);
		public void set_date (uint year, uint month, uint day);
		[NoAccessorMethod]
		public int day { get; set; }
		[NoAccessorMethod]
		public uint max_year { set; }
		[NoAccessorMethod]
		public uint min_year { set; }
		[NoAccessorMethod]
		public int month { get; set; }
		[NoAccessorMethod]
		public int year { get; set; }
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class Caption : Gtk.EventBox, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public Caption (Gtk.SizeGroup group, string value, Gtk.Widget control, Gtk.Widget icon, Hildon.CaptionStatus flag);
		public bool get_child_expand ();
		public unowned Gtk.Widget get_icon_image ();
		public Hildon.CaptionIconPosition get_icon_position ();
		public unowned string get_label ();
		public float get_label_alignment ();
		public unowned string get_separator ();
		public unowned Gtk.SizeGroup get_size_group ();
		public Hildon.CaptionStatus get_status ();
		public bool is_mandatory ();
		public void set_child_expand (bool expand);
		public void set_icon_image (Gtk.Widget icon);
		public void set_icon_position (Hildon.CaptionIconPosition pos);
		public void set_label (string label);
		public void set_label_alignment (float alignment);
		public void set_label_markup (string markup);
		public void set_separator (string separator);
		public void set_size_group (Gtk.SizeGroup new_group);
		public void set_status (Hildon.CaptionStatus flag);
		[NoAccessorMethod]
		public Gtk.Widget icon { owned get; set; }
		public Hildon.CaptionIconPosition icon_position { get; set; }
		public string label { get; set; }
		[NoAccessorMethod]
		public string markup { set; }
		public string separator { get; set; }
		public Gtk.SizeGroup size_group { get; set; }
		public Hildon.CaptionStatus status { get; set; }
		public virtual signal void activate ();
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class CodeDialog : Gtk.Dialog, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public CodeDialog ();
		public void clear_code ();
		public unowned string get_code ();
		public void set_help_text (string text);
		public void set_input_sensitive (bool sensitive);
		public virtual signal void input ();
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class ColorButton : Gtk.Button, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public ColorButton ();
		public void get_color (out Gdk.Color color);
		public bool get_popup_shown ();
		public void popdown ();
		public void set_color (Gdk.Color color);
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public ColorButton.with_color (Gdk.Color color);
		public Gdk.Color color { get; set; }
		public bool popup_shown { get; }
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class ColorChooser : Gtk.Widget, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public ColorChooser ();
		public void get_color (out Gdk.Color color);
		public virtual void set_color (Gdk.Color color);
		public Gdk.Color color { get; set; }
		public virtual signal void color_changed ();
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class ColorChooserDialog : Gtk.Dialog, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public ColorChooserDialog ();
		public void get_color (out Gdk.Color color);
		public void set_color (Gdk.Color color);
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class Controlbar : Gtk.Scale, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public Controlbar ();
		public int get_max ();
		public int get_min ();
		public int get_value ();
		public void set_max (int max);
		public void set_min (int min);
		public void set_range (int min, int max);
		public void set_value (int value);
		public int max { get; set; }
		public int min { get; set; }
		public int value { get; set; }
		public virtual signal void end_reached (bool end);
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class DateEditor : Gtk.Container, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public DateEditor ();
		public void get_date (uint year, uint month, uint day);
		public uint get_day ();
		public uint get_month ();
		public uint get_year ();
		public void set_date (uint year, uint month, uint day);
		public bool set_day (uint day);
		public bool set_month (uint month);
		public bool set_year (uint year);
		public uint day { get; set; }
		[NoAccessorMethod]
		public uint max_year { get; set; }
		[NoAccessorMethod]
		public uint min_year { get; set; }
		public uint month { get; set; }
		public uint year { get; set; }
		public virtual signal bool date_error (Hildon.DateTimeError type);
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class FindToolbar : Gtk.Toolbar, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public FindToolbar (string label);
		public int get_active ();
		public bool get_active_iter (out Gtk.TreeIter iter);
		public int32 get_last_index ();
		public void highlight_entry (bool get_focus);
		public void set_active (int index);
		public void set_active_iter (Gtk.TreeIter iter);
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public FindToolbar.with_model (string label, Gtk.ListStore model, int column);
		[NoAccessorMethod]
		public int column { get; set; }
		[NoAccessorMethod]
		public int history_limit { get; set construct; }
		[NoAccessorMethod]
		public string label { owned get; set construct; }
		[NoAccessorMethod]
		public Gtk.ListStore list { owned get; set; }
		[NoAccessorMethod]
		public int max_characters { get; set construct; }
		[NoAccessorMethod]
		public string prefix { owned get; set; }
		public virtual signal void close ();
		public virtual signal bool history_append ();
		public virtual signal void invalid_input ();
		public virtual signal void search ();
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class FontSelectionDialog : Gtk.Dialog, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public FontSelectionDialog (Gtk.Window parent, string title);
		public unowned string get_preview_text ();
		public void set_preview_text (string text);
		[NoAccessorMethod]
		public bool bold { get; set; }
		[NoAccessorMethod]
		public bool bold_set { get; set construct; }
		[NoAccessorMethod]
		public Gdk.Color color { get; set; }
		[NoAccessorMethod]
		public bool color_set { get; set construct; }
		[NoAccessorMethod]
		public string family { owned get; set; }
		[NoAccessorMethod]
		public bool family_set { get; set construct; }
		[NoAccessorMethod]
		public double font_scaling { get; set; }
		[NoAccessorMethod]
		public bool italic { get; set; }
		[NoAccessorMethod]
		public bool italic_set { get; set construct; }
		[NoAccessorMethod]
		public int position { get; set; }
		[NoAccessorMethod]
		public bool position_set { get; set construct; }
		public string preview_text { get; set; }
		[NoAccessorMethod]
		public int size { get; set; }
		[NoAccessorMethod]
		public bool size_set { get; set construct; }
		[NoAccessorMethod]
		public bool strikethrough { get; set; }
		[NoAccessorMethod]
		public bool strikethrough_set { get; set construct; }
		[NoAccessorMethod]
		public bool underline { get; set; }
		[NoAccessorMethod]
		public bool underline_set { get; set construct; }
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class GetPasswordDialog : Gtk.Dialog, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public GetPasswordDialog (Gtk.Window parent, bool get_old);
		public unowned string get_password ();
		public void set_caption (string new_caption);
		public void set_max_characters (int max_characters);
		public void set_message (string message);
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public GetPasswordDialog.with_default (Gtk.Window parent, string password, bool get_old);
		[NoAccessorMethod]
		public string caption_label { owned get; set; }
		[NoAccessorMethod]
		public bool get_old { get; construct; }
		[NoAccessorMethod]
		public int max_characters { get; set; }
		[NoAccessorMethod]
		public string message { owned get; set; }
		[NoAccessorMethod]
		public bool numbers_only { get; set; }
		[NoAccessorMethod]
		public string password { owned get; set; }
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class HVolumebar : Hildon.Volumebar, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public HVolumebar ();
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class LoginDialog : Gtk.Dialog, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public LoginDialog (Gtk.Window parent);
		public unowned string get_password ();
		public unowned string get_username ();
		public void set_message (string msg);
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public LoginDialog.with_default (Gtk.Window parent, string name, string password);
		[NoAccessorMethod]
		public string message { owned get; set; }
		[NoAccessorMethod]
		public string password { owned get; set; }
		[NoAccessorMethod]
		public string username { owned get; set; }
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class Note : Gtk.Dialog, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public Note.cancel_with_progress_bar (Gtk.Window parent, string description, Gtk.ProgressBar progressbar);
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public Note.confirmation (Gtk.Window parent, string description);
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public Note.confirmation_add_buttons (Gtk.Window parent, string description);
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public Note.confirmation_with_icon_name (Gtk.Window parent, string description, string icon_name);
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public Note.information (Gtk.Window parent, string description);
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public Note.information_with_icon_name (Gtk.Window parent, string description, string icon_name);
		public void set_button_text (string text);
		public void set_button_texts (string text_ok, string text_cancel);
		[NoAccessorMethod]
		public string description { owned get; set; }
		[NoAccessorMethod]
		public string icon { owned get; set; }
		[NoAccessorMethod]
		public Gtk.ProgressBar progressbar { owned get; set; }
		[NoAccessorMethod]
		public string stock_icon { owned get; set; }
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class NumberEditor : Gtk.Container, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public NumberEditor (int min, int max);
		public int get_value ();
		public void set_range (int min, int max);
		public void set_value (int value);
		public int value { get; set; }
		public virtual signal bool range_error (Hildon.NumberEditorErrorType type);
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class Program : GLib.Object {
		public void add_window (Hildon.Window window);
		public bool get_can_hibernate ();
		public unowned Gtk.Menu get_common_menu ();
		public unowned Gtk.Toolbar get_common_toolbar ();
		public static unowned Hildon.Program get_instance ();
		public bool get_is_topmost ();
		public void remove_window (Hildon.Window window);
		public void set_can_hibernate (bool can_hibernate);
		public void set_common_menu (Gtk.Menu menu);
		public void set_common_toolbar (Gtk.Toolbar toolbar);
		public bool can_hibernate { get; set; }
		public bool is_topmost { get; }
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class RangeEditor : Gtk.Container, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public RangeEditor ();
		public int get_higher ();
		public int get_lower ();
		public int get_max ();
		public int get_min ();
		public void get_range (int start, int end);
		public unowned string get_separator ();
		public void set_higher (int value);
		public void set_limits (int start, int end);
		public void set_lower (int value);
		public void set_max (int value);
		public void set_min (int value);
		public void set_range (int start, int end);
		public void set_separator (string separator);
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public RangeEditor.with_separator (string separator);
		public int higher { get; set construct; }
		public int lower { get; set construct; }
		public int max { get; set construct; }
		public int min { get; set construct; }
		public string separator { get; set construct; }
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class Seekbar : Gtk.Scale, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public Seekbar ();
		public uint get_fraction ();
		public int get_position ();
		public int get_total_time ();
		public void set_fraction (uint fraction);
		public void set_position (int time);
		public void set_total_time (int time);
		public double fraction { get; set; }
		public double position { get; set; }
		public double total_time { get; set; }
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class SetPasswordDialog : Gtk.Dialog, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public SetPasswordDialog (Gtk.Window parent, bool modify_protection);
		public unowned string get_password ();
		public bool get_protected ();
		public void set_message (string message);
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public SetPasswordDialog.with_default (Gtk.Window parent, string password, bool modify_protection);
		[NoAccessorMethod]
		public string message { owned get; set; }
		[NoAccessorMethod]
		public bool modify_protection { get; construct; }
		[NoAccessorMethod]
		public string password { owned get; set; }
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class SortDialog : Gtk.Dialog, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public SortDialog (Gtk.Window parent);
		public int add_sort_key (string sort_key);
		public int add_sort_key_reversed (string sort_key);
		public int get_sort_key ();
		public Gtk.SortType get_sort_order ();
		public void set_sort_key (int key);
		public void set_sort_order (Gtk.SortType order);
		public int sort_key { get; set; }
		public Gtk.SortType sort_order { get; set; }
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class TimeEditor : Gtk.Container, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public TimeEditor ();
		public uint get_duration_max ();
		public uint get_duration_min ();
		public bool get_duration_mode ();
		public void get_duration_range (uint min_seconds, uint max_seconds);
		public bool get_show_hours ();
		public bool get_show_seconds ();
		public uint get_ticks ();
		public void get_time (uint hours, uint minutes, uint seconds);
		public static void get_time_separators (Gtk.Label hm_sep_label, Gtk.Label ms_sep_label);
		public void set_duration_max (uint duration_max);
		public void set_duration_min (uint duration_min);
		public void set_duration_mode (bool duration_mode);
		public void set_duration_range (uint min_seconds, uint max_seconds);
		public void set_show_hours (bool show_hours);
		public void set_show_seconds (bool show_seconds);
		public void set_ticks (uint ticks);
		public void set_time (uint hours, uint minutes, uint seconds);
		public uint duration_max { get; set; }
		public uint duration_min { get; set; }
		public bool duration_mode { get; set; }
		public bool show_hours { get; set; }
		public bool show_seconds { get; set; }
		public uint ticks { get; set; }
		public virtual signal bool time_error (Hildon.DateTimeError type);
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class TimePicker : Gtk.Dialog, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public TimePicker (Gtk.Window parent);
		public void get_time (uint hours, uint minutes);
		public void set_time (uint hours, uint minutes);
		[NoAccessorMethod]
		public uint minutes { get; set; }
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class VVolumebar : Hildon.Volumebar, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public VVolumebar ();
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class Volumebar : Gtk.Container, Atk.Implementor, Gtk.Buildable {
		public unowned Gtk.Adjustment get_adjustment ();
		public double get_level ();
		public bool get_mute ();
		public void set_level (double level);
		public void set_mute (bool mute);
		public void set_range_insensitive_message (string message);
		public void set_range_insensitive_messagef (string format);
		[NoAccessorMethod]
		public bool can_focus { get; set construct; }
		[NoAccessorMethod]
		public bool has_mute { get; set construct; }
		public double level { get; set; }
		public bool mute { get; set; }
		public virtual signal void level_changed ();
		public virtual signal void mute_toggled ();
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class VolumebarRange : Gtk.Scale, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public VolumebarRange (Gtk.Orientation orientation);
		public double get_level ();
		public void set_level (double level);
		public double level { get; set; }
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class WeekdayPicker : Gtk.Container, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public WeekdayPicker ();
		public bool isset_day (GLib.DateWeekday day);
		public void set_all ();
		public void set_day (GLib.DateWeekday day);
		public void toggle_day (GLib.DateWeekday day);
		public void unset_all ();
		public void unset_day (GLib.DateWeekday day);
		public virtual signal void selection_changed (int p0);
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class Window : Gtk.Window, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public Window ();
		public void add_toolbar (Gtk.Toolbar toolbar);
		public void add_with_scrollbar (Gtk.Widget child);
		public bool get_is_topmost ();
		public unowned Gtk.Menu get_menu ();
		public void remove_toolbar (Gtk.Toolbar toolbar);
		public void set_menu (Gtk.Menu menu);
		public bool is_topmost { get; }
		public virtual signal void clipboard_operation (int operation);
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public class WizardDialog : Gtk.Dialog, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public WizardDialog (Gtk.Window parent, string wizard_name, Gtk.Notebook notebook);
		[NoAccessorMethod]
		public bool autotitle { get; set; }
		[NoAccessorMethod]
		public string wizard_name { owned get; set; }
		[NoAccessorMethod]
		public Gtk.Notebook wizard_notebook { owned get; set; }
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public interface BreadCrumb : Gtk.Widget {
		public void activated ();
		public abstract void get_natural_size (int width, int height);
		public signal void crumb_activated ();
	}
	[CCode (cprefix = "HILDON_CALENDAR_", has_type_id = "0", cheader_filename = "hildon/hildon.h")]
	[Flags]
	public enum CalendarDisplayOptions {
		SHOW_HEADING,
		SHOW_DAY_NAMES,
		NO_MONTH_CHANGE,
		SHOW_WEEK_NUMBERS,
		WEEK_START_MONDAY
	}
	[CCode (cprefix = "HILDON_CAPTION_POSITION_", has_type_id = "0", cheader_filename = "hildon/hildon.h")]
	public enum CaptionIconPosition {
		LEFT,
		RIGHT
	}
	[CCode (cprefix = "HILDON_CAPTION_", has_type_id = "0", cheader_filename = "hildon/hildon.h")]
	public enum CaptionStatus {
		OPTIONAL,
		MANDATORY
	}
	[CCode (cprefix = "HILDON_DATE_TIME_ERROR_", has_type_id = "0", cheader_filename = "hildon/hildon.h")]
	public enum DateTimeError {
		NO_ERROR,
		MAX_HOURS,
		MAX_MINS,
		MAX_SECS,
		MAX_DAY,
		MAX_MONTH,
		MAX_YEAR,
		MIN_HOURS,
		MIN_MINS,
		MIN_SECS,
		MIN_DAY,
		MIN_MONTH,
		MIN_YEAR,
		EMPTY_HOURS,
		EMPTY_MINS,
		EMPTY_SECS,
		EMPTY_DAY,
		EMPTY_MONTH,
		EMPTY_YEAR,
		MIN_DURATION,
		MAX_DURATION,
		INVALID_CHAR,
		INVALID_DATE,
		INVALID_TIME
	}
	[CCode (cprefix = "HILDON_NOTE_TYPE_", has_type_id = "0", cheader_filename = "hildon/hildon.h")]
	public enum NoteType {
		CONFIRMATION,
		CONFIRMATION_BUTTON,
		INFORMATION,
		INFORMATION_THEME,
		PROGRESSBAR
	}
	[CCode (cprefix = "HILDON_NUMBER_EDITOR_ERROR_", has_type_id = "0", cheader_filename = "hildon/hildon.h")]
	public enum NumberEditorErrorType {
		MAXIMUM_VALUE_EXCEED,
		MINIMUM_VALUE_EXCEED,
		ERRONEOUS_VALUE
	}
	[CCode (cprefix = "HILDON_WINDOW_CO_", has_type_id = "0", cheader_filename = "hildon/hildon.h")]
	public enum WindowClipboardOperation {
		COPY,
		CUT,
		PASTE
	}
	[CCode (cprefix = "HILDON_WIZARD_DIALOG_", has_type_id = "0", cheader_filename = "hildon/hildon.h")]
	public enum WizardDialogResponse {
		CANCEL,
		PREVIOUS,
		NEXT,
		FINISH
	}
	[CCode (cheader_filename = "hildon/hildon.h")]
	public const int MAJOR_VERSION;
	[CCode (cheader_filename = "hildon/hildon.h")]
	public const int MARGIN_DEFAULT;
	[CCode (cheader_filename = "hildon/hildon.h")]
	public const int MARGIN_DOUBLE;
	[CCode (cheader_filename = "hildon/hildon.h")]
	public const int MARGIN_HALF;
	[CCode (cheader_filename = "hildon/hildon.h")]
	public const int MARGIN_TRIPLE;
	[CCode (cheader_filename = "hildon/hildon.h")]
	public const int MICRO_VERSION;
	[CCode (cheader_filename = "hildon/hildon.h")]
	public const int MINOR_VERSION;
	[CCode (cheader_filename = "hildon/hildon.h")]
	public const int WINDOW_LONG_PRESS_TIME;
	[CCode (cheader_filename = "hildon/hildon.h")]
	public static int get_icon_pixel_size (Gtk.IconSize size);
	[CCode (cheader_filename = "hildon/hildon.h")]
	public static bool helper_event_button_is_finger (Gdk.EventButton event);
	[CCode (cheader_filename = "hildon/hildon.h")]
	public static void helper_set_insensitive_message (Gtk.Widget widget, string message);
	[CCode (cheader_filename = "hildon/hildon.h")]
	public static void helper_set_insensitive_messagef (Gtk.Widget widget, string format);
	[CCode (cheader_filename = "hildon/hildon.h")]
	public static ulong helper_set_logical_color (Gtk.Widget widget, Gtk.RcFlags rcflags, Gtk.StateType state, string logicalcolorname);
	[CCode (cheader_filename = "hildon/hildon.h")]
	public static ulong helper_set_logical_font (Gtk.Widget widget, string logicalfontname);
	[CCode (cheader_filename = "hildon/hildon.h")]
	public static void helper_set_thumb_scrollbar (Gtk.ScrolledWindow win, bool thumb);
	[CCode (cheader_filename = "hildon/hildon.h")]
	public static void play_system_sound (string sample);
}
