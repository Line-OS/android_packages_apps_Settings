.class public Lcom/android/settings/location/LocationScanningPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "LocationScanningPreferenceController.java"


# static fields
.field static final KEY_LOCATION_SCANNING:Ljava/lang/String; = "location_scanning"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "location_scanning"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/android/settings/location/LocationScanningPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 58
    iget-object p0, p0, Lcom/android/settings/location/LocationScanningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050026

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/android/settings/location/LocationScanningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "wifi_scan_always_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 41
    :goto_0
    iget-object v3, p0, Lcom/android/settings/location/LocationScanningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ble_scan_always_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const v0, 0x7f120c97

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    const v0, 0x7f120c96

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    const v0, 0x7f120c95

    goto :goto_1

    :cond_4
    const v0, 0x7f120c94

    .line 53
    :goto_1
    iget-object p0, p0, Lcom/android/settings/location/LocationScanningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
