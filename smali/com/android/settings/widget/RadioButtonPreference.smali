.class public Lcom/android/settings/widget/RadioButtonPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private appendix:Landroid/view/View;

.field private appendixVisibility:I

.field private mListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f04024f

    const v1, 0x101008e

    .line 58
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/android/settings/widget/RadioButtonPreference;->mListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcom/android/settings/widget/RadioButtonPreference;->appendixVisibility:I

    const p1, 0x7f0d0151

    .line 52
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    const p1, 0x7f0d013f

    .line 53
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 80
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0445

    .line 82
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    move v2, v1

    .line 84
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a008a

    .line 86
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPreference;->appendix:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreference;->appendix:Landroid/view/View;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/settings/widget/RadioButtonPreference;->appendixVisibility:I

    const/4 v2, -0x1

    if-eq p0, v2, :cond_1

    .line 88
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const p0, 0x1020016

    .line 92
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_2

    .line 94
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 p1, 0x3

    .line 95
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    return-void
.end method

.method public onClick()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreference;->mListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, p0}, Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method public setAppendixVisibility(I)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreference;->appendix:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_0
    iput p1, p0, Lcom/android/settings/widget/RadioButtonPreference;->appendixVisibility:I

    return-void
.end method

.method public setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/widget/RadioButtonPreference;->mListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

    return-void
.end method
