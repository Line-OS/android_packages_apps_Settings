.class public Lcom/google/android/setupdesign/util/DescriptionStyler;
.super Ljava/lang/Object;
.source "DescriptionStyler.java"


# direct methods
.method public static applyPartnerCustomizationStyle(Landroid/widget/TextView;)V
    .locals 4

    .line 16
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 20
    invoke-virtual {v1, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-static {p0, v1}, Lcom/google/android/setupdesign/util/DescriptionStyler;->setTextColor(Landroid/widget/TextView;I)V

    .line 26
    :cond_0
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_LINK_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 27
    invoke-virtual {v1, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    invoke-static {p0, v1}, Lcom/google/android/setupdesign/util/DescriptionStyler;->setLinkTextColor(Landroid/widget/TextView;I)V

    .line 33
    :cond_1
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/4 v3, 0x0

    .line 34
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_2

    .line 36
    invoke-static {p0, v1}, Lcom/google/android/setupdesign/util/DescriptionStyler;->setTextSize(Landroid/widget/TextView;F)V

    .line 40
    :cond_2
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 41
    invoke-virtual {v1, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 42
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 44
    invoke-static {p0, v1}, Lcom/google/android/setupdesign/util/DescriptionStyler;->setFontFamily(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 47
    :cond_3
    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/setupdesign/util/DescriptionStyler;->setGravity(Landroid/widget/TextView;I)V

    return-void
.end method

.method static setFontFamily(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method static setGravity(Landroid/widget/TextView;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    return-void
.end method

.method static setLinkTextColor(Landroid/widget/TextView;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    :cond_0
    return-void
.end method

.method static setTextColor(Landroid/widget/TextView;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method static setTextSize(Landroid/widget/TextView;F)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
