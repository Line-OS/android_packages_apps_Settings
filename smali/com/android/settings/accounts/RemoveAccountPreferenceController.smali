.class public Lcom/android/settings/accounts/RemoveAccountPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "RemoveAccountPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;,
        Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mParentFragment:Landroidx/fragment/app/Fragment;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p2, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "remove_account"

    .line 68
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a00c6

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 70
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "remove_account"

    return-object p0
.end method

.method public init(Landroid/accounts/Account;Landroid/os/UserHandle;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mAccount:Landroid/accounts/Account;

    .line 99
    iput-object p2, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v1, "no_modify_accounts"

    .line 86
    invoke-static {v0, v1, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object p0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p1, v0, p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->show(Landroidx/fragment/app/Fragment;Landroid/accounts/Account;Landroid/os/UserHandle;)Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    return-void
.end method
