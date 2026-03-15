.class public Lcom/google/android/settings/aware/SilenceGestureFooterPreferenceController;
.super Lcom/google/android/settings/aware/AwareFooterPreferenceController;
.source "SilenceGestureFooterPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "silence_gesture_footer"

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/google/android/settings/aware/AwareFooterPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAvailabilityStatus()I
    .locals 0

    .line 16
    invoke-super {p0}, Lcom/google/android/settings/aware/AwareFooterPreferenceController;->getAvailabilityStatus()I

    move-result p0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x659

    return p0
.end method

.method public getText()I
    .locals 0

    const p0, 0x7f120700

    return p0
.end method

.method public bridge synthetic onStart()V
    .locals 0

    .line 16
    invoke-super {p0}, Lcom/google/android/settings/aware/AwareFooterPreferenceController;->onStart()V

    return-void
.end method

.method public bridge synthetic setFooterMixin(Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lcom/google/android/settings/aware/AwareFooterPreferenceController;->setFooterMixin(Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;)V

    return-void
.end method
