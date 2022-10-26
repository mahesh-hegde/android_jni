// Autogenerated by jnigen. DO NOT EDIT!

// ignore_for_file: camel_case_types
// ignore_for_file: file_names
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: constant_identifier_names
// ignore_for_file: unused_shown_name
// ignore_for_file: annotate_overrides
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import
// ignore_for_file: unused_element
// ignore_for_file: unused_field

import "package:jni/jni.dart" as jni;

import "package:jni/internal_helpers_for_jnigen.dart";

import "../graphics/Bitmap.dart" as bitmap_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.ExifInterface
///
/// This is a class for reading and writing Exif tags in a JPEG file or a RAW image file.
///
/// Supported formats are: JPEG, DNG, CR2, NEF, NRW, ARW, RW2, ORF, PEF, SRW, RAF and HEIF.
///
/// Attribute mutation is supported for JPEG image files.
class ExifInterface extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/ExifInterface");
  ExifInterface.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ORIENTATION_FLIP_HORIZONTAL
  static const ORIENTATION_FLIP_HORIZONTAL = 2;

  /// from: static public final int ORIENTATION_FLIP_VERTICAL
  static const ORIENTATION_FLIP_VERTICAL = 4;

  /// from: static public final int ORIENTATION_NORMAL
  static const ORIENTATION_NORMAL = 1;

  /// from: static public final int ORIENTATION_ROTATE_180
  static const ORIENTATION_ROTATE_180 = 3;

  /// from: static public final int ORIENTATION_ROTATE_270
  static const ORIENTATION_ROTATE_270 = 8;

  /// from: static public final int ORIENTATION_ROTATE_90
  static const ORIENTATION_ROTATE_90 = 6;

  /// from: static public final int ORIENTATION_TRANSPOSE
  static const ORIENTATION_TRANSPOSE = 5;

  /// from: static public final int ORIENTATION_TRANSVERSE
  static const ORIENTATION_TRANSVERSE = 7;

  /// from: static public final int ORIENTATION_UNDEFINED
  static const ORIENTATION_UNDEFINED = 0;

  /// from: static public final java.lang.String TAG_APERTURE
  ///
  /// Type is double.
  ///@deprecated use \#TAG_F_NUMBER instead
  static const TAG_APERTURE = "FNumber";

  /// from: static public final java.lang.String TAG_APERTURE_VALUE
  ///
  /// Type is rational.
  static const TAG_APERTURE_VALUE = "ApertureValue";

  /// from: static public final java.lang.String TAG_ARTIST
  ///
  /// Type is String.
  static const TAG_ARTIST = "Artist";

  /// from: static public final java.lang.String TAG_BITS_PER_SAMPLE
  ///
  /// Type is int.
  static const TAG_BITS_PER_SAMPLE = "BitsPerSample";

  /// from: static public final java.lang.String TAG_BRIGHTNESS_VALUE
  ///
  /// Type is rational.
  static const TAG_BRIGHTNESS_VALUE = "BrightnessValue";

  /// from: static public final java.lang.String TAG_CFA_PATTERN
  ///
  /// Type is String.
  static const TAG_CFA_PATTERN = "CFAPattern";

  /// from: static public final java.lang.String TAG_COLOR_SPACE
  ///
  /// Type is int.
  static const TAG_COLOR_SPACE = "ColorSpace";

  /// from: static public final java.lang.String TAG_COMPONENTS_CONFIGURATION
  ///
  /// Type is String.
  static const TAG_COMPONENTS_CONFIGURATION = "ComponentsConfiguration";

  /// from: static public final java.lang.String TAG_COMPRESSED_BITS_PER_PIXEL
  ///
  /// Type is rational.
  static const TAG_COMPRESSED_BITS_PER_PIXEL = "CompressedBitsPerPixel";

  /// from: static public final java.lang.String TAG_COMPRESSION
  ///
  /// Type is int.
  static const TAG_COMPRESSION = "Compression";

  /// from: static public final java.lang.String TAG_CONTRAST
  ///
  /// Type is int.
  static const TAG_CONTRAST = "Contrast";

  /// from: static public final java.lang.String TAG_COPYRIGHT
  ///
  /// Type is String.
  static const TAG_COPYRIGHT = "Copyright";

  /// from: static public final java.lang.String TAG_CUSTOM_RENDERED
  ///
  /// Type is int.
  static const TAG_CUSTOM_RENDERED = "CustomRendered";

  /// from: static public final java.lang.String TAG_DATETIME
  ///
  /// Type is String.
  static const TAG_DATETIME = "DateTime";

  /// from: static public final java.lang.String TAG_DATETIME_DIGITIZED
  ///
  /// Type is String.
  static const TAG_DATETIME_DIGITIZED = "DateTimeDigitized";

  /// from: static public final java.lang.String TAG_DATETIME_ORIGINAL
  ///
  /// Type is String.
  static const TAG_DATETIME_ORIGINAL = "DateTimeOriginal";

  /// from: static public final java.lang.String TAG_DEFAULT_CROP_SIZE
  ///
  /// Type is int. DNG Specification 1.4.0.0. Section 4
  static const TAG_DEFAULT_CROP_SIZE = "DefaultCropSize";

  /// from: static public final java.lang.String TAG_DEVICE_SETTING_DESCRIPTION
  ///
  /// Type is String.
  static const TAG_DEVICE_SETTING_DESCRIPTION = "DeviceSettingDescription";

  /// from: static public final java.lang.String TAG_DIGITAL_ZOOM_RATIO
  ///
  /// Type is double.
  static const TAG_DIGITAL_ZOOM_RATIO = "DigitalZoomRatio";

  /// from: static public final java.lang.String TAG_DNG_VERSION
  ///
  /// Type is int. DNG Specification 1.4.0.0. Section 4
  static const TAG_DNG_VERSION = "DNGVersion";

  /// from: static public final java.lang.String TAG_EXIF_VERSION
  ///
  /// Type is String.
  static const TAG_EXIF_VERSION = "ExifVersion";

  /// from: static public final java.lang.String TAG_EXPOSURE_BIAS_VALUE
  ///
  /// Type is double.
  static const TAG_EXPOSURE_BIAS_VALUE = "ExposureBiasValue";

  /// from: static public final java.lang.String TAG_EXPOSURE_INDEX
  ///
  /// Type is rational.
  static const TAG_EXPOSURE_INDEX = "ExposureIndex";

  /// from: static public final java.lang.String TAG_EXPOSURE_MODE
  ///
  /// Type is int.
  static const TAG_EXPOSURE_MODE = "ExposureMode";

  /// from: static public final java.lang.String TAG_EXPOSURE_PROGRAM
  ///
  /// Type is int.
  static const TAG_EXPOSURE_PROGRAM = "ExposureProgram";

  /// from: static public final java.lang.String TAG_EXPOSURE_TIME
  ///
  /// Type is double.
  static const TAG_EXPOSURE_TIME = "ExposureTime";

  /// from: static public final java.lang.String TAG_FILE_SOURCE
  ///
  /// Type is String.
  static const TAG_FILE_SOURCE = "FileSource";

  /// from: static public final java.lang.String TAG_FLASH
  ///
  /// Type is int.
  static const TAG_FLASH = "Flash";

  /// from: static public final java.lang.String TAG_FLASHPIX_VERSION
  ///
  /// Type is String.
  static const TAG_FLASHPIX_VERSION = "FlashpixVersion";

  /// from: static public final java.lang.String TAG_FLASH_ENERGY
  ///
  /// Type is rational.
  static const TAG_FLASH_ENERGY = "FlashEnergy";

  /// from: static public final java.lang.String TAG_FOCAL_LENGTH
  ///
  /// Type is rational.
  static const TAG_FOCAL_LENGTH = "FocalLength";

  /// from: static public final java.lang.String TAG_FOCAL_LENGTH_IN_35MM_FILM
  ///
  /// Type is int.
  static const TAG_FOCAL_LENGTH_IN_35MM_FILM = "FocalLengthIn35mmFilm";

  /// from: static public final java.lang.String TAG_FOCAL_PLANE_RESOLUTION_UNIT
  ///
  /// Type is int.
  static const TAG_FOCAL_PLANE_RESOLUTION_UNIT = "FocalPlaneResolutionUnit";

  /// from: static public final java.lang.String TAG_FOCAL_PLANE_X_RESOLUTION
  ///
  /// Type is rational.
  static const TAG_FOCAL_PLANE_X_RESOLUTION = "FocalPlaneXResolution";

  /// from: static public final java.lang.String TAG_FOCAL_PLANE_Y_RESOLUTION
  ///
  /// Type is rational.
  static const TAG_FOCAL_PLANE_Y_RESOLUTION = "FocalPlaneYResolution";

  /// from: static public final java.lang.String TAG_F_NUMBER
  ///
  /// Type is double.
  static const TAG_F_NUMBER = "FNumber";

  /// from: static public final java.lang.String TAG_GAIN_CONTROL
  ///
  /// Type is int.
  static const TAG_GAIN_CONTROL = "GainControl";

  /// from: static public final java.lang.String TAG_GPS_ALTITUDE
  ///
  /// The altitude (in meters) based on the reference in TAG_GPS_ALTITUDE_REF.
  /// Type is rational.
  static const TAG_GPS_ALTITUDE = "GPSAltitude";

  /// from: static public final java.lang.String TAG_GPS_ALTITUDE_REF
  ///
  /// 0 if the altitude is above sea level. 1 if the altitude is below sea
  /// level. Type is int.
  static const TAG_GPS_ALTITUDE_REF = "GPSAltitudeRef";

  /// from: static public final java.lang.String TAG_GPS_AREA_INFORMATION
  ///
  /// Type is String.
  static const TAG_GPS_AREA_INFORMATION = "GPSAreaInformation";

  /// from: static public final java.lang.String TAG_GPS_DATESTAMP
  ///
  /// Type is String.
  static const TAG_GPS_DATESTAMP = "GPSDateStamp";

  /// from: static public final java.lang.String TAG_GPS_DEST_BEARING
  ///
  /// Type is rational.
  static const TAG_GPS_DEST_BEARING = "GPSDestBearing";

  /// from: static public final java.lang.String TAG_GPS_DEST_BEARING_REF
  ///
  /// Type is String.
  static const TAG_GPS_DEST_BEARING_REF = "GPSDestBearingRef";

  /// from: static public final java.lang.String TAG_GPS_DEST_DISTANCE
  ///
  /// Type is rational.
  static const TAG_GPS_DEST_DISTANCE = "GPSDestDistance";

  /// from: static public final java.lang.String TAG_GPS_DEST_DISTANCE_REF
  ///
  /// Type is String.
  static const TAG_GPS_DEST_DISTANCE_REF = "GPSDestDistanceRef";

  /// from: static public final java.lang.String TAG_GPS_DEST_LATITUDE
  ///
  /// Type is rational.
  static const TAG_GPS_DEST_LATITUDE = "GPSDestLatitude";

  /// from: static public final java.lang.String TAG_GPS_DEST_LATITUDE_REF
  ///
  /// Type is String.
  static const TAG_GPS_DEST_LATITUDE_REF = "GPSDestLatitudeRef";

  /// from: static public final java.lang.String TAG_GPS_DEST_LONGITUDE
  ///
  /// Type is rational.
  static const TAG_GPS_DEST_LONGITUDE = "GPSDestLongitude";

  /// from: static public final java.lang.String TAG_GPS_DEST_LONGITUDE_REF
  ///
  /// Type is String.
  static const TAG_GPS_DEST_LONGITUDE_REF = "GPSDestLongitudeRef";

  /// from: static public final java.lang.String TAG_GPS_DIFFERENTIAL
  ///
  /// Type is int.
  static const TAG_GPS_DIFFERENTIAL = "GPSDifferential";

  /// from: static public final java.lang.String TAG_GPS_DOP
  ///
  /// Type is rational.
  static const TAG_GPS_DOP = "GPSDOP";

  /// from: static public final java.lang.String TAG_GPS_IMG_DIRECTION
  ///
  /// Type is rational.
  static const TAG_GPS_IMG_DIRECTION = "GPSImgDirection";

  /// from: static public final java.lang.String TAG_GPS_IMG_DIRECTION_REF
  ///
  /// Type is String.
  static const TAG_GPS_IMG_DIRECTION_REF = "GPSImgDirectionRef";

  /// from: static public final java.lang.String TAG_GPS_LATITUDE
  ///
  /// Type is rational. Format is "num1/denom1,num2/denom2,num3/denom3".
  static const TAG_GPS_LATITUDE = "GPSLatitude";

  /// from: static public final java.lang.String TAG_GPS_LATITUDE_REF
  ///
  /// Type is String.
  static const TAG_GPS_LATITUDE_REF = "GPSLatitudeRef";

  /// from: static public final java.lang.String TAG_GPS_LONGITUDE
  ///
  /// Type is rational. Format is "num1/denom1,num2/denom2,num3/denom3".
  static const TAG_GPS_LONGITUDE = "GPSLongitude";

  /// from: static public final java.lang.String TAG_GPS_LONGITUDE_REF
  ///
  /// Type is String.
  static const TAG_GPS_LONGITUDE_REF = "GPSLongitudeRef";

  /// from: static public final java.lang.String TAG_GPS_MAP_DATUM
  ///
  /// Type is String.
  static const TAG_GPS_MAP_DATUM = "GPSMapDatum";

  /// from: static public final java.lang.String TAG_GPS_MEASURE_MODE
  ///
  /// Type is String.
  static const TAG_GPS_MEASURE_MODE = "GPSMeasureMode";

  /// from: static public final java.lang.String TAG_GPS_PROCESSING_METHOD
  ///
  /// Type is String. Name of GPS processing method used for location finding.
  static const TAG_GPS_PROCESSING_METHOD = "GPSProcessingMethod";

  /// from: static public final java.lang.String TAG_GPS_SATELLITES
  ///
  /// Type is String.
  static const TAG_GPS_SATELLITES = "GPSSatellites";

  /// from: static public final java.lang.String TAG_GPS_SPEED
  ///
  /// Type is rational.
  static const TAG_GPS_SPEED = "GPSSpeed";

  /// from: static public final java.lang.String TAG_GPS_SPEED_REF
  ///
  /// Type is String.
  static const TAG_GPS_SPEED_REF = "GPSSpeedRef";

  /// from: static public final java.lang.String TAG_GPS_STATUS
  ///
  /// Type is String.
  static const TAG_GPS_STATUS = "GPSStatus";

  /// from: static public final java.lang.String TAG_GPS_TIMESTAMP
  ///
  /// Type is String. Format is "hh:mm:ss".
  static const TAG_GPS_TIMESTAMP = "GPSTimeStamp";

  /// from: static public final java.lang.String TAG_GPS_TRACK
  ///
  /// Type is rational.
  static const TAG_GPS_TRACK = "GPSTrack";

  /// from: static public final java.lang.String TAG_GPS_TRACK_REF
  ///
  /// Type is String.
  static const TAG_GPS_TRACK_REF = "GPSTrackRef";

  /// from: static public final java.lang.String TAG_GPS_VERSION_ID
  ///
  /// Type is String.
  static const TAG_GPS_VERSION_ID = "GPSVersionID";

  /// from: static public final java.lang.String TAG_IMAGE_DESCRIPTION
  ///
  /// Type is String.
  static const TAG_IMAGE_DESCRIPTION = "ImageDescription";

  /// from: static public final java.lang.String TAG_IMAGE_LENGTH
  ///
  /// Type is int.
  static const TAG_IMAGE_LENGTH = "ImageLength";

  /// from: static public final java.lang.String TAG_IMAGE_UNIQUE_ID
  ///
  /// Type is String.
  static const TAG_IMAGE_UNIQUE_ID = "ImageUniqueID";

  /// from: static public final java.lang.String TAG_IMAGE_WIDTH
  ///
  /// Type is int.
  static const TAG_IMAGE_WIDTH = "ImageWidth";

  /// from: static public final java.lang.String TAG_INTEROPERABILITY_INDEX
  ///
  /// Type is String.
  static const TAG_INTEROPERABILITY_INDEX = "InteroperabilityIndex";

  /// from: static public final java.lang.String TAG_ISO
  ///
  /// Type is int.
  ///@deprecated use \#TAG_ISO_SPEED_RATINGS instead
  static const TAG_ISO = "ISOSpeedRatings";

  /// from: static public final java.lang.String TAG_ISO_SPEED_RATINGS
  ///
  /// Type is int.
  static const TAG_ISO_SPEED_RATINGS = "ISOSpeedRatings";

  /// from: static public final java.lang.String TAG_JPEG_INTERCHANGE_FORMAT
  ///
  /// Type is int.
  static const TAG_JPEG_INTERCHANGE_FORMAT = "JPEGInterchangeFormat";

  /// from: static public final java.lang.String TAG_JPEG_INTERCHANGE_FORMAT_LENGTH
  ///
  /// Type is int.
  static const TAG_JPEG_INTERCHANGE_FORMAT_LENGTH =
      "JPEGInterchangeFormatLength";

  /// from: static public final java.lang.String TAG_LIGHT_SOURCE
  ///
  /// Type is int.
  static const TAG_LIGHT_SOURCE = "LightSource";

  /// from: static public final java.lang.String TAG_MAKE
  ///
  /// Type is String.
  static const TAG_MAKE = "Make";

  /// from: static public final java.lang.String TAG_MAKER_NOTE
  ///
  /// Type is String.
  static const TAG_MAKER_NOTE = "MakerNote";

  /// from: static public final java.lang.String TAG_MAX_APERTURE_VALUE
  ///
  /// Type is rational.
  static const TAG_MAX_APERTURE_VALUE = "MaxApertureValue";

  /// from: static public final java.lang.String TAG_METERING_MODE
  ///
  /// Type is int.
  static const TAG_METERING_MODE = "MeteringMode";

  /// from: static public final java.lang.String TAG_MODEL
  ///
  /// Type is String.
  static const TAG_MODEL = "Model";

  /// from: static public final java.lang.String TAG_NEW_SUBFILE_TYPE
  ///
  /// Type is int.
  static const TAG_NEW_SUBFILE_TYPE = "NewSubfileType";

  /// from: static public final java.lang.String TAG_OECF
  ///
  /// Type is String.
  static const TAG_OECF = "OECF";

  /// from: static public final java.lang.String TAG_ORF_ASPECT_FRAME
  ///
  /// Type is int. See Olympus Image Processing tags in http://www.exiv2.org/tags-olympus.html.
  static const TAG_ORF_ASPECT_FRAME = "AspectFrame";

  /// from: static public final java.lang.String TAG_ORF_PREVIEW_IMAGE_LENGTH
  ///
  /// Type is int. See Olympus Camera Settings tags in http://www.exiv2.org/tags-olympus.html.
  static const TAG_ORF_PREVIEW_IMAGE_LENGTH = "PreviewImageLength";

  /// from: static public final java.lang.String TAG_ORF_PREVIEW_IMAGE_START
  ///
  /// Type is int. See Olympus Camera Settings tags in http://www.exiv2.org/tags-olympus.html.
  static const TAG_ORF_PREVIEW_IMAGE_START = "PreviewImageStart";

  /// from: static public final java.lang.String TAG_ORF_THUMBNAIL_IMAGE
  ///
  /// Type is undefined. See Olympus MakerNote tags in http://www.exiv2.org/tags-olympus.html.
  static const TAG_ORF_THUMBNAIL_IMAGE = "ThumbnailImage";

  /// from: static public final java.lang.String TAG_ORIENTATION
  ///
  /// Type is int.
  static const TAG_ORIENTATION = "Orientation";

  /// from: static public final java.lang.String TAG_PHOTOMETRIC_INTERPRETATION
  ///
  /// Type is int.
  static const TAG_PHOTOMETRIC_INTERPRETATION = "PhotometricInterpretation";

  /// from: static public final java.lang.String TAG_PIXEL_X_DIMENSION
  ///
  /// Type is int.
  static const TAG_PIXEL_X_DIMENSION = "PixelXDimension";

  /// from: static public final java.lang.String TAG_PIXEL_Y_DIMENSION
  ///
  /// Type is int.
  static const TAG_PIXEL_Y_DIMENSION = "PixelYDimension";

  /// from: static public final java.lang.String TAG_PLANAR_CONFIGURATION
  ///
  /// Type is int.
  static const TAG_PLANAR_CONFIGURATION = "PlanarConfiguration";

  /// from: static public final java.lang.String TAG_PRIMARY_CHROMATICITIES
  ///
  /// Type is rational.
  static const TAG_PRIMARY_CHROMATICITIES = "PrimaryChromaticities";

  /// from: static public final java.lang.String TAG_REFERENCE_BLACK_WHITE
  ///
  /// Type is rational.
  static const TAG_REFERENCE_BLACK_WHITE = "ReferenceBlackWhite";

  /// from: static public final java.lang.String TAG_RELATED_SOUND_FILE
  ///
  /// Type is String.
  static const TAG_RELATED_SOUND_FILE = "RelatedSoundFile";

  /// from: static public final java.lang.String TAG_RESOLUTION_UNIT
  ///
  /// Type is int.
  static const TAG_RESOLUTION_UNIT = "ResolutionUnit";

  /// from: static public final java.lang.String TAG_ROWS_PER_STRIP
  ///
  /// Type is int.
  static const TAG_ROWS_PER_STRIP = "RowsPerStrip";

  /// from: static public final java.lang.String TAG_RW2_ISO
  ///
  /// Type is int. See PanasonicRaw tags in
  /// http://www.sno.phy.queensu.ca/~phil/exiftool/TagNames/PanasonicRaw.html
  static const TAG_RW2_ISO = "ISO";

  /// from: static public final java.lang.String TAG_RW2_JPG_FROM_RAW
  ///
  /// Type is undefined. See PanasonicRaw tags in
  /// http://www.sno.phy.queensu.ca/~phil/exiftool/TagNames/PanasonicRaw.html
  static const TAG_RW2_JPG_FROM_RAW = "JpgFromRaw";

  /// from: static public final java.lang.String TAG_RW2_SENSOR_BOTTOM_BORDER
  ///
  /// Type is int. See PanasonicRaw tags in
  /// http://www.sno.phy.queensu.ca/~phil/exiftool/TagNames/PanasonicRaw.html
  static const TAG_RW2_SENSOR_BOTTOM_BORDER = "SensorBottomBorder";

  /// from: static public final java.lang.String TAG_RW2_SENSOR_LEFT_BORDER
  ///
  /// Type is int. See PanasonicRaw tags in
  /// http://www.sno.phy.queensu.ca/~phil/exiftool/TagNames/PanasonicRaw.html
  static const TAG_RW2_SENSOR_LEFT_BORDER = "SensorLeftBorder";

  /// from: static public final java.lang.String TAG_RW2_SENSOR_RIGHT_BORDER
  ///
  /// Type is int. See PanasonicRaw tags in
  /// http://www.sno.phy.queensu.ca/~phil/exiftool/TagNames/PanasonicRaw.html
  static const TAG_RW2_SENSOR_RIGHT_BORDER = "SensorRightBorder";

  /// from: static public final java.lang.String TAG_RW2_SENSOR_TOP_BORDER
  ///
  /// Type is int. See PanasonicRaw tags in
  /// http://www.sno.phy.queensu.ca/~phil/exiftool/TagNames/PanasonicRaw.html
  static const TAG_RW2_SENSOR_TOP_BORDER = "SensorTopBorder";

  /// from: static public final java.lang.String TAG_SAMPLES_PER_PIXEL
  ///
  /// Type is int.
  static const TAG_SAMPLES_PER_PIXEL = "SamplesPerPixel";

  /// from: static public final java.lang.String TAG_SATURATION
  ///
  /// Type is int.
  static const TAG_SATURATION = "Saturation";

  /// from: static public final java.lang.String TAG_SCENE_CAPTURE_TYPE
  ///
  /// Type is int.
  static const TAG_SCENE_CAPTURE_TYPE = "SceneCaptureType";

  /// from: static public final java.lang.String TAG_SCENE_TYPE
  ///
  /// Type is String.
  static const TAG_SCENE_TYPE = "SceneType";

  /// from: static public final java.lang.String TAG_SENSING_METHOD
  ///
  /// Type is int.
  static const TAG_SENSING_METHOD = "SensingMethod";

  /// from: static public final java.lang.String TAG_SHARPNESS
  ///
  /// Type is int.
  static const TAG_SHARPNESS = "Sharpness";

  /// from: static public final java.lang.String TAG_SHUTTER_SPEED_VALUE
  ///
  /// Type is rational.
  static const TAG_SHUTTER_SPEED_VALUE = "ShutterSpeedValue";

  /// from: static public final java.lang.String TAG_SOFTWARE
  ///
  /// Type is String.
  static const TAG_SOFTWARE = "Software";

  /// from: static public final java.lang.String TAG_SPATIAL_FREQUENCY_RESPONSE
  ///
  /// Type is String.
  static const TAG_SPATIAL_FREQUENCY_RESPONSE = "SpatialFrequencyResponse";

  /// from: static public final java.lang.String TAG_SPECTRAL_SENSITIVITY
  ///
  /// Type is String.
  static const TAG_SPECTRAL_SENSITIVITY = "SpectralSensitivity";

  /// from: static public final java.lang.String TAG_STRIP_BYTE_COUNTS
  ///
  /// Type is int.
  static const TAG_STRIP_BYTE_COUNTS = "StripByteCounts";

  /// from: static public final java.lang.String TAG_STRIP_OFFSETS
  ///
  /// Type is int.
  static const TAG_STRIP_OFFSETS = "StripOffsets";

  /// from: static public final java.lang.String TAG_SUBFILE_TYPE
  ///
  /// Type is int.
  static const TAG_SUBFILE_TYPE = "SubfileType";

  /// from: static public final java.lang.String TAG_SUBJECT_AREA
  ///
  /// Type is int.
  static const TAG_SUBJECT_AREA = "SubjectArea";

  /// from: static public final java.lang.String TAG_SUBJECT_DISTANCE
  ///
  /// Type is double.
  static const TAG_SUBJECT_DISTANCE = "SubjectDistance";

  /// from: static public final java.lang.String TAG_SUBJECT_DISTANCE_RANGE
  ///
  /// Type is int.
  static const TAG_SUBJECT_DISTANCE_RANGE = "SubjectDistanceRange";

  /// from: static public final java.lang.String TAG_SUBJECT_LOCATION
  ///
  /// Type is int.
  static const TAG_SUBJECT_LOCATION = "SubjectLocation";

  /// from: static public final java.lang.String TAG_SUBSEC_TIME
  ///
  /// Type is String.
  static const TAG_SUBSEC_TIME = "SubSecTime";

  /// from: static public final java.lang.String TAG_SUBSEC_TIME_DIG
  ///
  /// Type is String.
  ///@deprecated use \#TAG_SUBSEC_TIME_DIGITIZED instead
  static const TAG_SUBSEC_TIME_DIG = "SubSecTimeDigitized";

  /// from: static public final java.lang.String TAG_SUBSEC_TIME_DIGITIZED
  ///
  /// Type is String.
  static const TAG_SUBSEC_TIME_DIGITIZED = "SubSecTimeDigitized";

  /// from: static public final java.lang.String TAG_SUBSEC_TIME_ORIG
  ///
  /// Type is String.
  ///@deprecated use \#TAG_SUBSEC_TIME_ORIGINAL instead
  static const TAG_SUBSEC_TIME_ORIG = "SubSecTimeOriginal";

  /// from: static public final java.lang.String TAG_SUBSEC_TIME_ORIGINAL
  ///
  /// Type is String.
  static const TAG_SUBSEC_TIME_ORIGINAL = "SubSecTimeOriginal";

  /// from: static public final java.lang.String TAG_THUMBNAIL_IMAGE_LENGTH
  ///
  /// Type is int.
  static const TAG_THUMBNAIL_IMAGE_LENGTH = "ThumbnailImageLength";

  /// from: static public final java.lang.String TAG_THUMBNAIL_IMAGE_WIDTH
  ///
  /// Type is int.
  static const TAG_THUMBNAIL_IMAGE_WIDTH = "ThumbnailImageWidth";

  /// from: static public final java.lang.String TAG_TRANSFER_FUNCTION
  ///
  /// Type is int.
  static const TAG_TRANSFER_FUNCTION = "TransferFunction";

  /// from: static public final java.lang.String TAG_USER_COMMENT
  ///
  /// Type is String.
  static const TAG_USER_COMMENT = "UserComment";

  /// from: static public final java.lang.String TAG_WHITE_BALANCE
  ///
  /// Type is int.
  static const TAG_WHITE_BALANCE = "WhiteBalance";

  /// from: static public final java.lang.String TAG_WHITE_POINT
  ///
  /// Type is rational.
  static const TAG_WHITE_POINT = "WhitePoint";

  /// from: static public final java.lang.String TAG_X_RESOLUTION
  ///
  /// Type is rational.
  static const TAG_X_RESOLUTION = "XResolution";

  /// from: static public final java.lang.String TAG_Y_CB_CR_COEFFICIENTS
  ///
  /// Type is rational.
  static const TAG_Y_CB_CR_COEFFICIENTS = "YCbCrCoefficients";

  /// from: static public final java.lang.String TAG_Y_CB_CR_POSITIONING
  ///
  /// Type is int.
  static const TAG_Y_CB_CR_POSITIONING = "YCbCrPositioning";

  /// from: static public final java.lang.String TAG_Y_CB_CR_SUB_SAMPLING
  ///
  /// Type is int.
  static const TAG_Y_CB_CR_SUB_SAMPLING = "YCbCrSubSampling";

  /// from: static public final java.lang.String TAG_Y_RESOLUTION
  ///
  /// Type is rational.
  static const TAG_Y_RESOLUTION = "YResolution";

  /// from: static public final int WHITEBALANCE_AUTO
  static const WHITEBALANCE_AUTO = 0;

  /// from: static public final int WHITEBALANCE_MANUAL
  static const WHITEBALANCE_MANUAL = 1;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String filename)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Reads Exif tags from the specified image file.
  ExifInterface(jni.JniString filename)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [filename.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/io/FileDescriptor;)V");

  /// from: public void <init>(java.io.FileDescriptor fileDescriptor)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Reads Exif tags from the specified image file descriptor. Attribute mutation is supported
  /// for writable and seekable file descriptors only. This constructor will not rewind the offset
  /// of the given file descriptor. Developers should close the file descriptor after use.
  ExifInterface.ctor1(jni.JniObject fileDescriptor)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [fileDescriptor.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/io/InputStream;)V");

  /// from: public void <init>(java.io.InputStream inputStream)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Reads Exif tags from the specified image input stream. Attribute mutation is not supported
  /// for input streams. The given input stream will proceed its current position. Developers
  /// should close the input stream after use.
  ExifInterface.ctor2(jni.JniObject inputStream)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [inputStream.reference]).object);

  static final _id_getAttribute = jniAccessors.getMethodIDOf(
      _classRef, "getAttribute", "(Ljava/lang/String;)Ljava/lang/String;");

  /// from: public java.lang.String getAttribute(java.lang.String tag)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the value of the specified tag or {@code null} if there
  /// is no such tag in the image file.
  ///@param tag the name of the tag.
  jni.JniString getAttribute(jni.JniString tag) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAttribute, jni.JniType.objectType, [tag.reference]).object);

  static final _id_getAttributeInt = jniAccessors.getMethodIDOf(
      _classRef, "getAttributeInt", "(Ljava/lang/String;I)I");

  /// from: public int getAttributeInt(java.lang.String tag, int defaultValue)
  ///
  /// Returns the integer value of the specified tag. If there is no such tag
  /// in the image file or the value cannot be parsed as integer, return
  /// <var>defaultValue</var>.
  ///@param tag the name of the tag.
  ///@param defaultValue the value to return if the tag is not available.
  int getAttributeInt(jni.JniString tag, int defaultValue) =>
      jniAccessors.callMethodWithArgs(reference, _id_getAttributeInt,
          jni.JniType.intType, [tag.reference, defaultValue]).integer;

  static final _id_getAttributeDouble = jniAccessors.getMethodIDOf(
      _classRef, "getAttributeDouble", "(Ljava/lang/String;D)D");

  /// from: public double getAttributeDouble(java.lang.String tag, double defaultValue)
  ///
  /// Returns the double value of the tag that is specified as rational or contains a
  /// double-formatted value. If there is no such tag in the image file or the value cannot be
  /// parsed as double, return <var>defaultValue</var>.
  ///@param tag the name of the tag.
  ///@param defaultValue the value to return if the tag is not available.
  double getAttributeDouble(jni.JniString tag, double defaultValue) =>
      jniAccessors.callMethodWithArgs(reference, _id_getAttributeDouble,
          jni.JniType.doubleType, [tag.reference, defaultValue]).doubleFloat;

  static final _id_setAttribute = jniAccessors.getMethodIDOf(
      _classRef, "setAttribute", "(Ljava/lang/String;Ljava/lang/String;)V");

  /// from: public void setAttribute(java.lang.String tag, java.lang.String value)
  ///
  /// Set the value of the specified tag.
  ///@param tag the name of the tag.
  ///@param value the value of the tag.
  void setAttribute(jni.JniString tag, jni.JniString value) =>
      jniAccessors.callMethodWithArgs(reference, _id_setAttribute,
          jni.JniType.voidType, [tag.reference, value.reference]).check();

  static final _id_saveAttributes =
      jniAccessors.getMethodIDOf(_classRef, "saveAttributes", "()V");

  /// from: public void saveAttributes()
  ///
  /// Save the tag data into the original image file. This is expensive because it involves
  /// copying all the data from one file to another and deleting the old file and renaming the
  /// other. It's best to use \#setAttribute(String,String) to set all attributes to write
  /// and make a single call rather than multiple calls for each attribute.
  ///
  /// This method is only supported for JPEG files.
  ///
  ///
  void saveAttributes() => jniAccessors.callMethodWithArgs(
      reference, _id_saveAttributes, jni.JniType.voidType, []).check();

  static final _id_hasThumbnail =
      jniAccessors.getMethodIDOf(_classRef, "hasThumbnail", "()Z");

  /// from: public boolean hasThumbnail()
  ///
  /// Returns true if the image file has a thumbnail.
  bool hasThumbnail() => jniAccessors.callMethodWithArgs(
      reference, _id_hasThumbnail, jni.JniType.booleanType, []).boolean;

  static final _id_getThumbnail =
      jniAccessors.getMethodIDOf(_classRef, "getThumbnail", "()[B");

  /// from: public byte[] getThumbnail()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the JPEG compressed thumbnail inside the image file, or {@code null} if there is no
  /// JPEG compressed thumbnail.
  /// The returned data can be decoded using
  /// android.graphics.BitmapFactory\#decodeByteArray(byte[],int,int)
  jni.JniObject getThumbnail() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getThumbnail, jni.JniType.objectType, []).object);

  static final _id_getThumbnailBytes =
      jniAccessors.getMethodIDOf(_classRef, "getThumbnailBytes", "()[B");

  /// from: public byte[] getThumbnailBytes()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the thumbnail bytes inside the image file, regardless of the compression type of the
  /// thumbnail image.
  jni.JniObject getThumbnailBytes() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getThumbnailBytes, jni.JniType.objectType, []).object);

  static final _id_getThumbnailBitmap = jniAccessors.getMethodIDOf(
      _classRef, "getThumbnailBitmap", "()Landroid/graphics/Bitmap;");

  /// from: public android.graphics.Bitmap getThumbnailBitmap()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates and returns a Bitmap object of the thumbnail image based on the byte array and the
  /// thumbnail compression value, or {@code null} if the compression type is unsupported.
  bitmap_.Bitmap getThumbnailBitmap() =>
      bitmap_.Bitmap.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getThumbnailBitmap, jni.JniType.objectType, []).object);

  static final _id_isThumbnailCompressed =
      jniAccessors.getMethodIDOf(_classRef, "isThumbnailCompressed", "()Z");

  /// from: public boolean isThumbnailCompressed()
  ///
  /// Returns true if thumbnail image is JPEG Compressed, or false if either thumbnail image does
  /// not exist or thumbnail image is uncompressed.
  bool isThumbnailCompressed() => jniAccessors.callMethodWithArgs(reference,
      _id_isThumbnailCompressed, jni.JniType.booleanType, []).boolean;

  static final _id_getThumbnailRange =
      jniAccessors.getMethodIDOf(_classRef, "getThumbnailRange", "()[J");

  /// from: public long[] getThumbnailRange()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the offset and length of thumbnail inside the image file, or
  /// {@code null} if there is no thumbnail.
  ///@return two-element array, the offset in the first value, and length in
  ///         the second, or {@code null} if no thumbnail was found.
  jni.JniObject getThumbnailRange() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getThumbnailRange, jni.JniType.objectType, []).object);

  static final _id_getLatLong =
      jniAccessors.getMethodIDOf(_classRef, "getLatLong", "([F)Z");

  /// from: public boolean getLatLong(float[] output)
  ///
  /// Stores the latitude and longitude value in a float array. The first element is
  /// the latitude, and the second element is the longitude. Returns false if the
  /// Exif tags are not available.
  bool getLatLong(jni.JniObject output) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getLatLong,
      jni.JniType.booleanType,
      [output.reference]).boolean;

  static final _id_getAltitude =
      jniAccessors.getMethodIDOf(_classRef, "getAltitude", "(D)D");

  /// from: public double getAltitude(double defaultValue)
  ///
  /// Return the altitude in meters. If the exif tag does not exist, return
  /// <var>defaultValue</var>.
  ///@param defaultValue the value to return if the tag is not available.
  double getAltitude(double defaultValue) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getAltitude,
      jni.JniType.doubleType,
      [defaultValue]).doubleFloat;
}
