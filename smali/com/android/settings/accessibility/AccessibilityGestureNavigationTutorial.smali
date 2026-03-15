.class public Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;
.super Ljava/lang/Object;
.source "AccessibilityGestureNavigationTutorial.java"


# static fields
.field private static final mOnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    sget-object v0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityGestureNavigationTutorial$8C7pOA2IdxSAhUypXc1abvjSbh8;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$AccessibilityGestureNavigationTutorial$8C7pOA2IdxSAhUypXc1abvjSbh8;

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private static createDialog(Landroid/content/Context;I)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 152
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createTutorialDialogContentView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget-object p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const p1, 0x7f12008b

    .line 154
    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 155
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x1

    .line 157
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 p1, 0x0

    .line 158
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 159
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method

.method private static createTutorialDialogContentView(Landroid/content/Context;I)Landroid/view/View;
    .locals 7

    const-string v0, "layout_inflater"

    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    const v3, 0x7f11001b

    const v4, 0x7f11001c

    const v5, 0x7f0a01cd

    const v6, 0x7f0a01cf

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_4

    :cond_0
    const p1, 0x7f0d01ff

    .line 131
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    .line 135
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->isTouchExploreOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-static {p0, v3, p1}, Lcom/android/settings/accessibility/VideoPlayer;->create(Landroid/content/Context;ILandroid/view/TextureView;)Lcom/android/settings/accessibility/VideoPlayer;

    .line 141
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->isTouchExploreOn(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f12008d

    goto :goto_1

    :cond_2
    const p0, 0x7f12008e

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_3
    const p1, 0x7f0d0201

    .line 116
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 118
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    .line 120
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->isTouchExploreOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    invoke-static {p0, v3, p1}, Lcom/android/settings/accessibility/VideoPlayer;->create(Landroid/content/Context;ILandroid/view/TextureView;)Lcom/android/settings/accessibility/VideoPlayer;

    .line 126
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->isTouchExploreOn(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x7f12008f

    goto :goto_3

    :cond_5
    const p0, 0x7f120090

    :goto_3
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_6
    const p0, 0x7f0d0200

    .line 112
    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_4
    return-object v1
.end method

.method private static getAttrResourceId(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 201
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 202
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 203
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method private static getMessageStringWithIcon(Landroid/content/Context;I)Landroid/text/SpannableString;
    .locals 5

    const v0, 0x7f12008c

    .line 175
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    const-string v2, "%s"

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x2

    const v3, 0x7f0800e3

    .line 181
    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x1010036

    .line 182
    invoke-static {p0, v4}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/4 p0, 0x0

    .line 183
    invoke-virtual {v3, p0, p0, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 184
    new-instance p0, Landroid/text/style/ImageSpan;

    invoke-direct {p0, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x21

    invoke-virtual {v1, p0, v0, v2, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private static getThemeAttrColor(Landroid/content/Context;I)I
    .locals 0

    .line 194
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->getAttrResourceId(Landroid/content/Context;I)I

    move-result p1

    .line 195
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private static isGestureNavigateEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0080

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTouchExploreOn(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "accessibility"

    .line 214
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 215
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$static$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 66
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static showAccessibilityButtonTutorialDialog(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;
    .locals 2

    const/4 v0, 0x0

    .line 83
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createDialog(Landroid/content/Context;I)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 86
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->updateMessageWithIcon(Landroid/content/Context;Landroidx/appcompat/app/AlertDialog;)V

    :cond_0
    return-object v0
.end method

.method public static showGestureNavigationSettingsTutorialDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2

    .line 70
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 71
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createTutorialDialogContentView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget-object p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x7f12008b

    .line 73
    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x1

    .line 77
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 p1, 0x0

    .line 78
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static showGestureNavigationTutorialDialog(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    .line 94
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createDialog(Landroid/content/Context;I)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static updateMessageWithIcon(Landroid/content/Context;Landroidx/appcompat/app/AlertDialog;)V
    .locals 1

    const v0, 0x7f0a00d4

    .line 165
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 169
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    .line 170
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->getMessageStringWithIcon(Landroid/content/Context;I)Landroid/text/SpannableString;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
