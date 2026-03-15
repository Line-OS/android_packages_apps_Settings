.class public Lcom/google/android/settings/aware/AwareDialogPreferenceBase;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "AwareDialogPreferenceBase.java"


# instance fields
.field protected mHelper:Lcom/google/android/settings/aware/AwareHelper;

.field private mInfoIcon:Landroid/view/View;

.field private mSummary:Landroid/view/View;

.field private mTitle:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0}, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    invoke-direct {p0}, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const v0, 0x7f0d014e

    .line 79
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 80
    new-instance v0, Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/settings/aware/AwareHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    .line 81
    iget-object v0, p0, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    new-instance v1, Lcom/google/android/settings/aware/AwareDialogPreferenceBase$1;

    invoke-direct {v1, p0}, Lcom/google/android/settings/aware/AwareDialogPreferenceBase$1;-><init>(Lcom/google/android/settings/aware/AwareDialogPreferenceBase;)V

    invoke-virtual {v0, v1}, Lcom/google/android/settings/aware/AwareHelper;->register(Lcom/google/android/settings/aware/AwareHelper$Callback;)V

    return-void
.end method


# virtual methods
.method protected isAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    .line 44
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->mTitle:Landroid/view/View;

    const v0, 0x1020010

    .line 45
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->mSummary:Landroid/view/View;

    const v0, 0x7f0a022b

    .line 46
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->mInfoIcon:Landroid/view/View;

    .line 47
    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->updatePreference()V

    return-void
.end method

.method public performClick()V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->performEnabledClick()V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {v0}, Lcom/google/android/settings/aware/AwareHelper;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected performEnabledClick()V
    .locals 0

    return-void
.end method

.method protected updatePreference()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->mTitle:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->mSummary:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->mInfoIcon:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 67
    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/google/android/settings/aware/AwareDialogPreferenceBase;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    .line 68
    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareHelper;->isAirplaneModeOn()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/16 p0, 0x8

    .line 67
    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method
