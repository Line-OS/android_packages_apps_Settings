.class public abstract Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "TelephonyTogglePreferenceController.java"

# interfaces
.implements Lcom/android/settings/network/telephony/TelephonyAvailabilityCallback;


# instance fields
.field protected mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    new-instance v2, Lcom/android/settings/network/telephony/-$$Lambda$DrHVthLwzKulCcT71StuF1F--S4;

    invoke-direct {v2, p0}, Lcom/android/settings/network/telephony/-$$Lambda$DrHVthLwzKulCcT71StuF1F--S4;-><init>(Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getAvailability(Landroid/content/Context;ILcom/android/settings/network/telephony/TelephonyAvailabilityCallback;)I

    move-result p0

    return p0
.end method
