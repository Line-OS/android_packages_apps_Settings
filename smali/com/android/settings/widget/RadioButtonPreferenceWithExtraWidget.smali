.class public Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;
.super Lcom/android/settings/widget/RadioButtonPreference;
.source "RadioButtonPreferenceWithExtraWidget.java"


# instance fields
.field private mExtraWidget:Landroid/widget/ImageView;

.field private mExtraWidgetDivider:Landroid/view/View;

.field private mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

.field private mExtraWidgetVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetVisibility:I

    const p1, 0x7f0d0140

    .line 40
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a036c

    .line 47
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    const v0, 0x7f0a036e

    .line 48
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetDivider:Landroid/view/View;

    .line 49
    iget p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetVisibility:I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetVisibility(I)V

    .line 51
    iget-object p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 83
    iput-object p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    .line 84
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 86
    iget-object p0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setExtraWidgetVisibility(I)V
    .locals 2

    .line 57
    iput p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetVisibility:I

    .line 58
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetDivider:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 64
    iget-object p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object p0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 67
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetVisibility:I

    if-ne v0, p1, :cond_2

    .line 71
    iget-object p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    const v0, 0x7f08022f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    .line 73
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1207c0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 72
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    if-ne v0, p1, :cond_3

    .line 75
    iget-object p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    const v0, 0x7f080230

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120d73

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 76
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method
