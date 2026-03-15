.class public Lcom/android/settings/notification/NotificationAppPreference;
.super Lcom/android/settings/widget/MasterSwitchPreference;
.source "NotificationAppPreference.java"


# instance fields
.field private mChecked:Z

.field private mEnableSwitch:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationAppPreference;)Landroid/widget/Switch;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/NotificationAppPreference;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mChecked:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/NotificationAppPreference;Z)Z
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 0

    const p0, 0x7f0d0150

    return p0
.end method

.method public isChecked()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mChecked:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v1, Lcom/android/settings/notification/NotificationAppPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationAppPreference$1;-><init>(Lcom/android/settings/notification/NotificationAppPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a0449

    .line 82
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    .line 83
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 86
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean p0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mChecked:Z

    .line 96
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 113
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAppPreference;->setSwitchEnabled(Z)V

    return-void
.end method

.method public setSwitchEnabled(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    .line 103
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    return-void
.end method
