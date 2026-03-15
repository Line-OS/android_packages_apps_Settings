.class public Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenRuleButtonsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;,
        Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;
    }
.end annotation


# instance fields
.field private mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

.field private mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mId:Ljava/lang/String;

.field private mRule:Landroid/app/AutomaticZenRule;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "zen_action_buttons"

    .line 50
    invoke-direct {p0, p1, v0, p3}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 51
    iput-object p2, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroidx/preference/PreferenceFragmentCompat;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "zen_action_buttons"

    .line 63
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v0, 0x7f1212e5

    .line 64
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    const v0, 0x10804cc

    .line 65
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    new-instance v0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;-><init>(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)V

    .line 66
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    const v0, 0x7f1212a9

    .line 67
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    const v0, 0x7f080240

    .line 68
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    new-instance v0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$DeleteRuleClickListener;-><init>(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)V

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    :cond_0
    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    .line 122
    iput-object p2, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->mId:Ljava/lang/String;

    return-void
.end method
