.class public Lcom/android/settings/notification/ZenCustomRadioButtonPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "ZenCustomRadioButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;,
        Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/RadioButton;

.field private mChecked:Z

.field private mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

.field private mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d0146

    .line 59
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d0146

    .line 54
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0d0146

    .line 49
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d0146

    .line 44
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 0

    const p0, 0x7f0d014b

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a00f5

    .line 80
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x1020001

    .line 84
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    .line 86
    iget-boolean v1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    const v0, 0x1020018

    .line 89
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a048c

    .line 90
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 91
    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    .line 96
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 98
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;->onRadioButtonClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020018

    if-ne v0, v1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

    if-eqz p1, :cond_1

    .line 128
    invoke-interface {p1, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;->onGearClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00f5

    if-ne p1, v0, :cond_1

    .line 131
    iget-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    if-eqz p1, :cond_1

    .line 132
    invoke-interface {p1, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;->onRadioButtonClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mChecked:Z

    .line 108
    iget-object p0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

    .line 69
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setOnRadioButtonClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    .line 74
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
