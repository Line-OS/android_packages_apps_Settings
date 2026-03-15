.class public Lcom/android/settings/deviceinfo/aboutphone/TopLevelAboutDevicePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TopLevelAboutDevicePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 37
    new-instance v0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "dummy_key"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
