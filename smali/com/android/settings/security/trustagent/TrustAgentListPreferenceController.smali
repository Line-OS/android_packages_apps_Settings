.class public Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TrustAgentListPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final MY_USER_ID:I

.field static final PREF_KEY_SECURITY_CATEGORY:Ljava/lang/String; = "security_category"

.field static final PREF_KEY_TRUST_AGENT:Ljava/lang/String; = "trust_agent"


# instance fields
.field private final mHost:Lcom/android/settings/security/SecuritySettings;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecurityCategory:Landroidx/preference/PreferenceCategory;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private final mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    .line 73
    iput-object p2, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 74
    invoke-interface {v0, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 75
    invoke-interface {v0}, Lcom/android/settings/security/SecurityFeatureProvider;->getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    if-eqz p3, :cond_0

    .line 77
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private updateTrustAgents()V
    .locals 7

    .line 138
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mSecurityCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mSecurityCategory:Landroidx/preference/PreferenceCategory;

    const-string v1, "trust_agent"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_5

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 156
    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 157
    invoke-virtual {v2, v3, v4}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 161
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    .line 162
    new-instance v4, Lcom/android/settingslib/RestrictedPreference;

    iget-object v5, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mSecurityCategory:Landroidx/preference/PreferenceCategory;

    .line 163
    invoke-virtual {v5}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 164
    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 165
    iget-object v5, v3, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v5, v3, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 168
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    .line 169
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 168
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 170
    iget-object v3, v3, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 171
    invoke-virtual {v4}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    const/4 v3, 0x0

    .line 172
    invoke-virtual {v4, v3}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    const v3, 0x7f1205ad

    .line 173
    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 176
    :cond_3
    iget-object v3, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mSecurityCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_4
    return-void

    .line 147
    :cond_5
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mSecurityCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "security_category"

    .line 94
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mSecurityCategory:Landroidx/preference/PreferenceCategory;

    .line 95
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->updateTrustAgents()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "trust_agent"

    return-object p0
.end method

.method public handleActivityResult(II)Z
    .locals 1

    const/16 v0, 0x7e

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 183
    iget-object p2, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 184
    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 115
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 118
    :cond_0
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 119
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 120
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    const/16 v1, 0x7e

    .line 122
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 121
    invoke-virtual {v0, v1, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 124
    iget-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz p1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 83
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050040

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "trust_agent_click_intent"

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->updateTrustAgents()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 108
    iget-object p0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    const-string v0, "trust_agent_click_intent"

    .line 109
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
