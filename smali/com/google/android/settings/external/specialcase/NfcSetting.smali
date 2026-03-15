.class public Lcom/google/android/settings/external/specialcase/NfcSetting;
.super Ljava/lang/Object;
.source "NfcSetting.java"

# interfaces
.implements Lcom/google/android/settings/external/Queryable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAvailability(Landroid/content/Context;Landroid/nfc/NfcAdapter;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x2

    return p0

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "airplane_mode_on"

    .line 120
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 122
    invoke-static {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->isToggleableInAirplaneMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private getIconResource()I
    .locals 0

    const p0, 0x7f080260

    return p0
.end method

.method private static getNfcStatus(Landroid/nfc/NfcAdapter;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getScreenTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f120479

    .line 130
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAccessCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/database/Cursor;
    .locals 4

    .line 48
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p2

    .line 49
    invoke-static {p2}, Lcom/google/android/settings/external/specialcase/NfcSetting;->getNfcStatus(Landroid/nfc/NfcAdapter;)I

    move-result v0

    .line 50
    invoke-static {p1, p2}, Lcom/google/android/settings/external/specialcase/NfcSetting;->getAvailability(Landroid/content/Context;Landroid/nfc/NfcAdapter;)I

    move-result p2

    .line 52
    const-class v1, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/settings/external/specialcase/NfcSetting;->getScreenTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nfc"

    .line 52
    invoke-interface {p0, p1, v3, v1, v2}, Lcom/google/android/settings/external/Queryable;->getIntentString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-direct {p0}, Lcom/google/android/settings/external/specialcase/NfcSetting;->getIconResource()I

    move-result p0

    .line 56
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/google/android/settings/external/ExternalSettingsContract;->EXTERNAL_SETTINGS_QUERY_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "existing_value"

    invoke-virtual {v2, v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "availability"

    invoke-virtual {v0, v2, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    const-string v0, "intent"

    .line 61
    invoke-virtual {p2, v0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 62
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "icon"

    invoke-virtual {p1, p2, p0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    const-string p1, "dependent_setting"

    const-string p2, "toggle_airplane"

    .line 63
    invoke-virtual {p0, p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v1
.end method

.method public getUpdateCursor(Landroid/content/Context;Lcom/android/settings/slices/SliceData;I)Landroid/database/Cursor;
    .locals 5

    .line 70
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p2

    .line 71
    invoke-static {p2}, Lcom/google/android/settings/external/specialcase/NfcSetting;->getNfcStatus(Landroid/nfc/NfcAdapter;)I

    move-result v0

    .line 73
    invoke-static {p1, p2}, Lcom/google/android/settings/external/specialcase/NfcSetting;->getAvailability(Landroid/content/Context;Landroid/nfc/NfcAdapter;)I

    move-result v1

    .line 74
    const-class v2, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;

    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/settings/external/specialcase/NfcSetting;->getScreenTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "nfc"

    .line 74
    invoke-interface {p0, p1, v4, v2, v3}, Lcom/google/android/settings/external/Queryable;->getIntentString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-direct {p0}, Lcom/google/android/settings/external/specialcase/NfcSetting;->getIconResource()I

    move-result v2

    .line 82
    invoke-interface {p0, v1, v0, p3}, Lcom/google/android/settings/external/Queryable;->shouldChangeValue(III)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    if-ne p3, p0, :cond_0

    .line 84
    invoke-virtual {p2}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_0
    if-nez p3, :cond_1

    .line 85
    invoke-virtual {p2}, Landroid/nfc/NfcAdapter;->disable()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move p3, v0

    .line 89
    :cond_2
    :goto_0
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p2, Lcom/google/android/settings/external/ExternalSettingsContract;->EXTERNAL_SETTINGS_UPDATE_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    .line 92
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v3, "newValue"

    invoke-virtual {p2, v3, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "existing_value"

    invoke-virtual {p2, v0, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "availability"

    invoke-virtual {p2, v0, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    const-string p3, "intent"

    .line 95
    invoke-virtual {p2, p3, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "icon"

    invoke-virtual {p1, p3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    const-string p2, "dependent_setting"

    const-string p3, "toggle_airplane"

    .line 97
    invoke-virtual {p1, p2, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object p0
.end method
