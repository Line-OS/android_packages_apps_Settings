.class public Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FirmwareVersionPreferenceController.java"


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

    const/4 p0, 0x1

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 37
    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object p0
.end method
