.class public Lcom/android/settings/security/OwnerInfoPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OwnerInfoPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

.field private final mParent:Landroidx/fragment/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object p2, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    .line 56
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p3, :cond_0

    .line 58
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/security/OwnerInfoPreferenceController;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "owner_info_settings"

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method getDeviceOwner()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method getDeviceOwnerInfo()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getOwnerInfo()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v0, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "owner_info_settings"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method isDeviceOwnerInfoEnabled()Z
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result p0

    return p0
.end method

.method isOwnerInfoEnabled()Z
    .locals 1

    .line 133
    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v0, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateEnableState()V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateSummary()V

    return-void
.end method

.method public updateEnableState()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->getDeviceOwner()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 89
    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    new-instance v1, Lcom/android/settings/security/OwnerInfoPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/security/OwnerInfoPreferenceController$1;-><init>(Lcom/android/settings/security/OwnerInfoPreferenceController;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateSummary()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->isOwnerInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->getOwnerInfo()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 114
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120b05

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 112
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method
