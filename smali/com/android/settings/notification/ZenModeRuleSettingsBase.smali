.class public abstract Lcom/android/settings/notification/ZenModeRuleSettingsBase;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeRuleSettingsBase.java"


# static fields
.field protected static final DEBUG:Z


# instance fields
.field private final CUSTOM_BEHAVIOR_KEY:Ljava/lang/String;

.field protected mActionButtons:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

.field protected mContext:Landroid/content/Context;

.field protected mCustomBehaviorPreference:Landroidx/preference/Preference;

.field protected mDisableListeners:Z

.field protected mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

.field protected mId:Ljava/lang/String;

.field protected mRule:Landroid/app/AutomaticZenRule;

.field protected mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-boolean v0, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    const-string v0, "zen_custom_setting"

    .line 40
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->CUSTOM_BEHAVIOR_KEY:Ljava/lang/String;

    return-void
.end method

.method private getZenRule()Landroid/app/AutomaticZenRule;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object p0

    return-object p0
.end method

.method private refreshRuleOrFinish()Z
    .locals 2

    .line 148
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->getZenRule()Landroid/app/AutomaticZenRule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    .line 149
    sget-boolean v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->toastAndFinish()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private toastAndFinish()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    const v1, 0x7f1212e8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private updateControls()V
    .locals 2

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mDisableListeners:Z

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->updateControlsInternal()V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->updateHeader()V

    .line 172
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mCustomBehaviorPreference:Landroidx/preference/Preference;

    const v1, 0x7f1212a3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mCustomBehaviorPreference:Landroidx/preference/Preference;

    const v1, 0x7f1212a2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mDisableListeners:Z

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const p0, 0x7f12074e

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    sget-boolean v1, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    const-string v2, "ZenModeSettings"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate getIntent()="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const-string p1, "No intent"

    .line 63
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->toastAndFinish()V

    return-void

    :cond_1
    const-string v1, "android.service.notification.extra.RULE_ID"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string p1, "rule id is null"

    .line 70
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->toastAndFinish()V

    return-void

    .line 75
    :cond_2
    sget-boolean v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 80
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "zen_custom_setting"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mCustomBehaviorPreference:Landroidx/preference/Preference;

    .line 82
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mCustomBehaviorPreference:Landroidx/preference/Preference;

    new-instance v0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase$1;-><init>(Lcom/android/settings/notification/ZenModeRuleSettingsBase;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->onCreateInternal()V

    return-void
.end method

.method protected abstract onCreateInternal()V
.end method

.method public onResume()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->updateControls()V

    :cond_1
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onZenModeConfigChanged()V

    .line 142
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->updateControls()V

    :cond_0
    return-void
.end method

.method protected abstract setRule(Landroid/app/AutomaticZenRule;)Z
.end method

.method protected abstract updateControlsInternal()V
.end method

.method protected updateHeader()V
    .locals 4

    .line 119
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettingsBase;->updatePreference(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettingsBase;->updatePreference(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mActionButtons:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mActionButtons:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mActionButtons:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeSettingsBase;->updatePreference(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method protected updateRule(Landroid/net/Uri;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    .line 136
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/notification/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method
