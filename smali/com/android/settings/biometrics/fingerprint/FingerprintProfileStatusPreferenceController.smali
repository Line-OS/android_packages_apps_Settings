.class public Lcom/android/settings/biometrics/fingerprint/FingerprintProfileStatusPreferenceController;
.super Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;
.source "FingerprintProfileStatusPreferenceController.java"


# static fields
.field public static final KEY_FINGERPRINT_SETTINGS:Ljava/lang/String; = "fingerprint_settings_profile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "fingerprint_settings_profile"

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getUserId()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mProfileChallengeUserId:I

    return p0
.end method

.method protected isUserSupported()Z
    .locals 2

    .line 33
    iget v0, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mProfileChallengeUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
