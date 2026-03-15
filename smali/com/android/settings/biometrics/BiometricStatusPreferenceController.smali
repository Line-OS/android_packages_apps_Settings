.class public abstract Lcom/android/settings/biometrics/BiometricStatusPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BiometricStatusPreferenceController.java"


# instance fields
.field protected final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected final mProfileChallengeUserId:I

.field protected final mUm:Landroid/os/UserManager;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    iput p2, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mUserId:I

    const-string p2, "user"

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mUm:Landroid/os/UserManager;

    .line 75
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 76
    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object p2

    .line 77
    invoke-interface {p2, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 78
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mUm:Landroid/os/UserManager;

    iget p2, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mUserId:I

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mProfileChallengeUserId:I

    return-void
.end method

.method static synthetic lambda$updateState$0(ILjava/lang/String;Landroidx/preference/Preference;)Z
    .locals 2

    .line 113
    invoke-virtual {p2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 114
    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 115
    invoke-static {p2, v0, p0}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 119
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    .line 120
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.USER_ID"

    .line 121
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p0, 0x1

    const-string p1, "from_settings_summary"

    .line 122
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->isDeviceSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->isUserSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x4

    return p0
.end method

.method protected abstract getEnrollClassName()Ljava/lang/String;
.end method

.method protected abstract getSettingsClassName()Ljava/lang/String;
.end method

.method protected abstract getSummaryTextEnrolled()Ljava/lang/String;
.end method

.method protected abstract getSummaryTextNoneEnrolled()Ljava/lang/String;
.end method

.method protected getUserId()I
    .locals 0

    .line 129
    iget p0, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mUserId:I

    return p0
.end method

.method protected abstract hasEnrolledBiometrics()Z
.end method

.method protected abstract isDeviceSupported()Z
.end method

.method protected isUserSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 97
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 101
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->getUserId()I

    move-result v0

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->hasEnrolledBiometrics()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->getSummaryTextEnrolled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->getSettingsClassName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->getSummaryTextNoneEnrolled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->getEnrollClassName()Ljava/lang/String;

    move-result-object p0

    .line 112
    :goto_0
    new-instance v1, Lcom/android/settings/biometrics/-$$Lambda$BiometricStatusPreferenceController$7VH_kzfR5uQnU8nXEuJlF_HfPgc;

    invoke-direct {v1, v0, p0}, Lcom/android/settings/biometrics/-$$Lambda$BiometricStatusPreferenceController$7VH_kzfR5uQnU8nXEuJlF_HfPgc;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
