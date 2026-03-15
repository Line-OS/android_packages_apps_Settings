.class public Lcom/android/settings/core/gateway/SettingsGateway;
.super Ljava/lang/Object;
.source "SettingsGateway.java"


# static fields
.field public static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field public static final SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    .line 156
    const-class v1, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceDashboardFragment;

    .line 157
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/shortcut/CreateShortcut;

    .line 158
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    .line 159
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-class v1, Lcom/android/settings/wifi/ConfigureWifiSettings;

    .line 160
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-class v1, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    .line 161
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-class v1, Lcom/android/settings/sim/SimSettings;

    .line 162
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-class v1, Lcom/android/settings/TetherSettings;

    .line 163
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .line 164
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-class v1, Lcom/android/settings/wifi/tether/WifiTetherSettings;

    .line 165
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-class v1, Lcom/android/settings/applications/appops/BackgroundCheckSummary;

    .line 166
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-class v1, Lcom/android/settings/vpn2/VpnSettings;

    .line 167
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-class v1, Lcom/android/settings/datausage/DataSaverSummary;

    .line 168
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-class v1, Lcom/android/settings/DateTimeSettings;

    .line 169
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const-class v1, Lcom/android/settings/localepicker/LocaleListEditor;

    .line 170
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const-class v1, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    .line 171
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0xe

    aput-object v1, v0, v16

    const-class v1, Lcom/android/settings/language/LanguageAndInputSettings;

    .line 172
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    .line 173
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x10

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/inputmethod/UserDictionaryList;

    .line 174
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x11

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/inputmethod/UserDictionarySettings;

    .line 175
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x12

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/DisplaySettings;

    .line 176
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x13

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;

    .line 177
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x14

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/deviceinfo/legal/ModuleLicensesDashboard;

    .line 178
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x15

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 179
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x16

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionSettings;

    .line 180
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x17

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/applications/assist/ManageAssist;

    .line 181
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x18

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/applications/ProcessStatsUi;

    .line 182
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x19

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/notification/NotificationStation;

    .line 183
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x1a

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/location/LocationSettings;

    .line 184
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x1b

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/privacy/PrivacyDashboardFragment;

    .line 185
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x1c

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/location/ScanningSettings;

    .line 186
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x1d

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/security/SecuritySettings;

    .line 187
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x1e

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/applications/UsageAccessDetails;

    .line 188
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x1f

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/backup/PrivacySettings;

    .line 189
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x20

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminSettings;

    .line 190
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x21

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/accessibility/AccessibilityDetailsSettingsFragment;

    .line 191
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x22

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/accessibility/AccessibilitySettings;

    .line 192
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x23

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;

    .line 193
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x24

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    .line 194
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x25

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    .line 195
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x26

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/tts/TextToSpeechSettings;

    .line 196
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x27

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/deviceinfo/StorageSettings;

    .line 197
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x28

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    .line 198
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x29

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .line 199
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x2a

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    .line 200
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x2b

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 201
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x2c

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/nfc/AndroidBeam;

    .line 202
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x2d

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 203
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x2e

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .line 204
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x2f

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    .line 205
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x30

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/gestures/AssistGestureSettings;

    .line 206
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x31

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/biometrics/face/FaceSettings;

    .line 207
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x32

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .line 208
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x33

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/gestures/SwipeToNotificationSettings;

    .line 209
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x34

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/gestures/DoubleTapPowerSettings;

    .line 210
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x35

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/gestures/DoubleTapScreenSettings;

    .line 211
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x36

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/gestures/PickupGestureSettings;

    .line 212
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x37

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/gestures/DoubleTwistGestureSettings;

    .line 213
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x38

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/gestures/SystemNavigationGestureSettings;

    .line 214
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x39

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/security/CryptKeeperSettings;

    .line 215
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x3a

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/datausage/DataUsageSummary;

    .line 216
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x3b

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/dream/DreamSettings;

    .line 217
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x3c

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/users/UserSettings;

    .line 218
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x3d

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/notification/NotificationAccessSettings;

    .line 219
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x3e

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/notification/AppBubbleNotificationSettings;

    .line 220
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x3f

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/notification/ZenAccessSettings;

    .line 221
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x40

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    .line 222
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x41

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/notification/ZenModeAutomationSettings;

    .line 223
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x42

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/print/PrintSettingsFragment;

    .line 224
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x43

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/print/PrintJobSettingsFragment;

    .line 225
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x44

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/TrustedCredentialsSettings;

    .line 226
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x45

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/nfc/PaymentSettings;

    .line 227
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x46

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    .line 228
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x47

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    .line 229
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x48

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/notification/ZenModeSettings;

    .line 230
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x49

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/notification/SoundSettings;

    .line 231
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x4a

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/notification/ConfigureNotificationSettings;

    .line 232
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x4b

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    .line 233
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x4c

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    .line 234
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x4d

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 235
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x4e

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;

    .line 236
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x4f

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/notification/AppNotificationSettings;

    .line 237
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x50

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/notification/NotificationAssistantPicker;

    .line 238
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x51

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/notification/ChannelNotificationSettings;

    .line 239
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x52

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/network/ApnSettings;

    .line 240
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x53

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/network/ApnEditor;

    .line 241
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x54

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/wifi/calling/WifiCallingSettings;

    .line 242
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x55

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    .line 243
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x56

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/notification/ZenModeEventRuleSettings;

    .line 244
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x57

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;

    .line 245
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x58

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/applications/ProcessStatsUi;

    .line 246
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x59

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    .line 247
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x5a

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/applications/ProcessStatsSummary;

    .line 248
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x5b

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;

    .line 249
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x5c

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;

    .line 250
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x5d

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;

    .line 251
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x5e

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/wallpaper/WallpaperTypeSettings;

    .line 252
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x5f

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;

    .line 253
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x60

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

    .line 254
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x61

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;

    .line 255
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x62

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/accounts/ManagedProfileSettings;

    .line 256
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x63

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/accounts/ChooseAccountFragment;

    .line 257
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x64

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/IccLockSettings;

    .line 258
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x65

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/TestingSettings;

    .line 259
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x66

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/wifi/WifiAPITest;

    .line 260
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x67

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/wifi/WifiInfo;

    .line 261
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x68

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/MasterClear;

    .line 262
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x69

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/system/ResetDashboardFragment;

    .line 263
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x6a

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/display/NightDisplaySettings;

    .line 264
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x6b

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/applications/managedomainurls/ManageDomainUrls;

    .line 265
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x6c

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;

    .line 266
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x6d

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 267
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x6e

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/system/SystemDashboardFragment;

    .line 268
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x6f

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/network/NetworkDashboardFragment;

    .line 269
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x70

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;

    .line 270
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x71

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    .line 271
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x72

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;

    .line 272
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x73

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;

    .line 273
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x74

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/accounts/AccountDashboardFragment;

    .line 274
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x75

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/enterprise/EnterprisePrivacySettings;

    .line 275
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x76

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/webview/WebViewAppPicker;

    .line 276
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x77

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/security/LockscreenDashboardFragment;

    .line 277
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x78

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    .line 278
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x79

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/datausage/DataUsageList;

    .line 279
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x7a

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/backup/ToggleBackupSettingFragment;

    .line 280
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x7b

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/connecteddevice/PreviouslyConnectedDeviceDashboardFragment;

    .line 281
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x7c

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;

    .line 282
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x7d

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/network/MobileNetworkListFragment;

    .line 283
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x7e

    aput-object v1, v0, v17

    const-class v1, Lcom/android/settings/gestures/GlobalActionsPanelSettings;

    .line 284
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x7f

    aput-object v1, v0, v17

    sput-object v0, Lcom/android/settings/core/gateway/SettingsGateway;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    .line 287
    const-class v1, Lcom/android/settings/Settings$NetworkDashboardActivity;

    .line 289
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$ConnectedDeviceDashboardActivity;

    .line 290
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lcom/android/settings/Settings$AppAndNotificationDashboardActivity;

    .line 291
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-class v1, Lcom/android/settings/Settings$DisplaySettingsActivity;

    .line 292
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-class v1, Lcom/android/settings/Settings$SoundSettingsActivity;

    .line 293
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-class v1, Lcom/android/settings/Settings$StorageDashboardActivity;

    .line 294
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-class v1, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    .line 295
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-class v1, Lcom/android/settings/Settings$AccountDashboardActivity;

    .line 296
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-class v1, Lcom/android/settings/Settings$PrivacySettingsActivity;

    .line 297
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const-class v1, Lcom/android/settings/Settings$SecurityDashboardActivity;

    .line 298
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const-class v1, Lcom/android/settings/Settings$AccessibilitySettingsActivity;

    .line 299
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    const-class v1, Lcom/android/settings/Settings$SystemDashboardActivity;

    .line 300
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v13

    const-class v1, Lcom/android/settings/support/SupportDashboardActivity;

    .line 301
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v14

    const-class v1, Lcom/android/settings/Settings$WifiSettingsActivity;

    .line 303
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v15

    const-class v1, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    .line 304
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v16

    const-class v1, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    .line 306
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$WifiDisplaySettingsActivity;

    .line 307
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$PrintSettingsActivity;

    .line 308
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$UserSettingsActivity;

    .line 310
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$ConfigureNotificationSettingsActivity;

    .line 311
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$ManageApplicationsActivity;

    .line 312
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$PaymentSettingsActivity;

    .line 313
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$LocationSettingsActivity;

    .line 315
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$LanguageAndInputSettingsActivity;

    .line 317
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$DateTimeSettingsActivity;

    .line 318
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$EnterprisePrivacySettingsActivity;

    .line 319
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$MyDeviceInfoActivity;

    .line 320
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$ModuleLicensesActivity;

    .line 321
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/backup/UserBackupSettingsActivity;

    .line 322
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/core/gateway/SettingsGateway;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    return-void
.end method
