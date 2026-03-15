.class public Lcom/android/settings/notification/NotificationSwitchBarPreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "NotificationSwitchBarPreference.java"


# instance fields
.field private mChecked:Z

.field private mEnableSwitch:Z

.field private mSwitch:Lcom/android/settings/widget/ToggleSwitch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mEnableSwitch:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationSwitchBarPreference;)Lcom/android/settings/widget/ToggleSwitch;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/NotificationSwitchBarPreference;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mChecked:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/settings/notification/NotificationSwitchBarPreference;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mChecked:Z

    return p1
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020040

    .line 41
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ToggleSwitch;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 42
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    if-eqz p1, :cond_0

    .line 43
    new-instance v0, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;-><init>(Lcom/android/settings/notification/NotificationSwitchBarPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mChecked:Z

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ToggleSwitch;->setChecked(Z)V

    .line 57
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mEnableSwitch:Z

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mChecked:Z

    .line 67
    iget-object p0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method
