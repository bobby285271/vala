/* gstreamer-pbutils-0.10.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gst", lower_case_cprefix = "gst_")]
namespace Gst {
	[Compact]
	[CCode (type_id = "GST_TYPE_INSTALL_PLUGINS_CONTEXT", cheader_filename = "gst/pbutils/pbutils.h")]
	public class InstallPluginsContext {
		[CCode (has_construct_function = false)]
		public InstallPluginsContext ();
		public void set_xid (uint xid);
	}
	[CCode (cprefix = "GST_INSTALL_PLUGINS_", has_type_id = "0", cheader_filename = "gst/pbutils/pbutils.h")]
	public enum InstallPluginsReturn {
		SUCCESS,
		NOT_FOUND,
		ERROR,
		PARTIAL_SUCCESS,
		USER_ABORT,
		CRASHED,
		INVALID,
		STARTED_OK,
		INTERNAL_FAILURE,
		HELPER_MISSING,
		INSTALL_IN_PROGRESS
	}
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public delegate void InstallPluginsResultFunc (Gst.InstallPluginsReturn result);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static Gst.InstallPluginsReturn install_plugins_async (string details, Gst.InstallPluginsContext ctx, Gst.InstallPluginsResultFunc func);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static bool install_plugins_installation_in_progress ();
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static unowned string install_plugins_return_get_name (Gst.InstallPluginsReturn ret);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static bool install_plugins_supported ();
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static Gst.InstallPluginsReturn install_plugins_sync (string details, Gst.InstallPluginsContext ctx);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static bool is_missing_plugin_message (Gst.Message msg);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static string missing_decoder_installer_detail_new (Gst.Caps decode_caps);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static Gst.Message missing_decoder_message_new (Gst.Element element, Gst.Caps decode_caps);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static string missing_element_installer_detail_new (string factory_name);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static Gst.Message missing_element_message_new (Gst.Element element, string factory_name);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static string missing_encoder_installer_detail_new (Gst.Caps encode_caps);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static Gst.Message missing_encoder_message_new (Gst.Element element, Gst.Caps encode_caps);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static string missing_plugin_message_get_description (Gst.Message msg);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static string missing_plugin_message_get_installer_detail (Gst.Message msg);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static string missing_uri_sink_installer_detail_new (string protocol);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static Gst.Message missing_uri_sink_message_new (Gst.Element element, string protocol);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static string missing_uri_source_installer_detail_new (string protocol);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static Gst.Message missing_uri_source_message_new (Gst.Element element, string protocol);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static bool pb_utils_add_codec_description_to_tag_list (Gst.TagList taglist, string codec_tag, Gst.Caps caps);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static unowned string pb_utils_get_codec_description (Gst.Caps caps);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static unowned string pb_utils_get_decoder_description (Gst.Caps caps);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static unowned string pb_utils_get_element_description (string factory_name);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static unowned string pb_utils_get_encoder_description (Gst.Caps caps);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static unowned string pb_utils_get_sink_description (string protocol);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static unowned string pb_utils_get_source_description (string protocol);
	[CCode (cheader_filename = "gst/pbutils/pbutils.h")]
	public static void pb_utils_init ();
}
