.class public Lcom/android/settings/security/LockUnificationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "LockUnificationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private mCurrentDevicePassword:[B

.field private mCurrentProfilePassword:[B

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mHost:Lcom/android/settings/security/SecuritySettings;

.field private mKeepDeviceLock:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mProfileUserId:I

.field private final mUm:Landroid/os/UserManager;

.field private mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 85
    iput-object p2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 86
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUm:Landroid/os/UserManager;

    .line 87
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 88
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 89
    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object p2

    .line 90
    invoke-interface {p2, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 91
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUm:Landroid/os/UserManager;

    sget p2, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    return-void
.end method

.method private launchConfirmDeviceAndProfileLock()V
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120f9a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 183
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 184
    sget v2, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    const/16 v3, 0x80

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->launchConfirmProfileLock()V

    :cond_0
    return-void
.end method

.method private launchConfirmProfileLock()V
    .locals 5

    .line 191
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120f9b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 194
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 195
    iget v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    const/16 v3, 0x81

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->unifyLocks()V

    :cond_0
    return-void
.end method

.method private promptForNewDeviceLock()V
    .locals 2

    .line 248
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 249
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v1, 0x7f1208c5

    .line 250
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private unifyKeepingDeviceLock()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZ[B)V

    return-void
.end method

.method private unifyKeepingWorkLock()V
    .locals 5

    .line 224
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    .line 225
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:[B

    .line 229
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentDevicePassword:[B

    sget v3, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    .line 228
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;[BI)Z

    goto :goto_0

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:[B

    iget-object v3, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentDevicePassword:[B

    sget v4, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword([B[BII)Z

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZ[B)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    .line 238
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    .line 239
    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    return-void
.end method

.method private unifyLocks()V
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mKeepDeviceLock:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->unifyKeepingDeviceLock()V

    .line 215
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->promptForNewDeviceLock()V

    goto :goto_0

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->unifyKeepingWorkLock()V

    :goto_0
    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentDevicePassword:[B

    .line 220
    iput-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:[B

    return-void
.end method

.method private ununifyLocks()V
    .locals 3

    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 171
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f1208c6

    .line 172
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "unification"

    .line 80
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "unification"

    return-object p0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    if-ne p2, v1, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->ununifyLocks()V

    return v0

    :cond_0
    const/16 v2, 0x80

    const-string v3, "password"

    if-ne p1, v2, :cond_1

    if-ne p2, v1, :cond_1

    .line 154
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentDevicePassword:[B

    .line 155
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->launchConfirmProfileLock()V

    return v0

    :cond_1
    const/16 v2, 0x81

    if-ne p1, v2, :cond_2

    if-ne p2, v1, :cond_2

    .line 160
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:[B

    .line 161
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->unifyLocks()V

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 96
    iget v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 97
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

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 107
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUm:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    invoke-static {p1, v0, v1}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 110
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 114
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    .line 115
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    const/high16 v1, 0x10000

    if-lt p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    .line 117
    invoke-virtual {p1, v1}, Landroid/app/admin/DevicePolicyManager;->isProfileActivePasswordSufficientForParent(I)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    move v0, p2

    :cond_2
    iput-boolean v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mKeepDeviceLock:Z

    .line 118
    iget-boolean p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mKeepDeviceLock:Z

    xor-int/2addr p1, p2

    invoke-static {p1}, Lcom/android/settings/security/UnificationConfirmationDialog;->newInstance(Z)Lcom/android/settings/security/UnificationConfirmationDialog;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    invoke-virtual {p1, p0}, Lcom/android/settings/security/UnificationConfirmationDialog;->show(Lcom/android/settings/security/SecuritySettings;)V

    goto :goto_0

    .line 120
    :cond_3
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120f9a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 121
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 122
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v1, 0x82

    .line 123
    sget v2, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result p1

    if-nez p1, :cond_4

    .line 126
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->ununifyLocks()V

    :cond_4
    :goto_0
    return p2
.end method

.method startUnification()V
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mKeepDeviceLock:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->launchConfirmProfileLock()V

    goto :goto_0

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->launchConfirmDeviceAndProfileLock()V

    :goto_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 134
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    .line 136
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    .line 137
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileUserId:I

    const-string v1, "no_unified_password"

    .line 140
    invoke-static {v0, v1, p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 139
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method
