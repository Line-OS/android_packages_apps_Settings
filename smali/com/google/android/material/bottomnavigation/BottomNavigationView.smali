.class public Lcom/google/android/material/bottomnavigation/BottomNavigationView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;,
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;,
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# instance fields
.field private itemRippleColor:Landroid/content/res/ColorStateList;

.field private final menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private menuInflater:Landroid/view/MenuInflater;

.field private final menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

.field private final presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

.field private reselectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;

.field private selectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 124
    sget v0, Lcom/google/android/material/R$attr;->bottomNavigationStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-direct {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 131
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenu;

    invoke-direct {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 133
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-direct {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 134
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 137
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 138
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setBottomNavigationMenuView(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)V

    .line 141
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setId(I)V

    .line 142
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {v1, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setPresenter(Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;)V

    .line 143
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 144
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 147
    sget-object v7, Lcom/google/android/material/R$styleable;->BottomNavigationView:[I

    sget v9, Lcom/google/android/material/R$style;->Widget_Design_BottomNavigationView:I

    const/4 v1, 0x2

    new-array v10, v1, [I

    sget v1, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    const/4 v3, 0x0

    aput v1, v10, v3

    sget v1, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    aput v1, v10, v2

    move-object v5, p1

    move-object v6, p2

    move v8, p3

    .line 148
    invoke-static/range {v5 .. v10}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    .line 157
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 158
    iget-object p3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    sget v1, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object p3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    const v1, 0x1010038

    .line 161
    invoke-virtual {p3, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 160
    invoke-virtual {p3, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 164
    :goto_0
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemIconSize:I

    .line 167
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/google/android/material/R$dimen;->design_bottom_navigation_icon_size:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 165
    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 164
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemIconSize(I)V

    .line 168
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 169
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceInactive:I

    .line 170
    invoke-virtual {p2, p3, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    .line 169
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextAppearanceInactive(I)V

    .line 172
    :cond_1
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 173
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemTextAppearanceActive:I

    .line 174
    invoke-virtual {p2, p3, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    .line 173
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextAppearanceActive(I)V

    .line 177
    :cond_2
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 178
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 181
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_4

    .line 183
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->createMaterialShapeDrawableBackground(Landroid/content/Context;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p3

    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 186
    :cond_4
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_elevation:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 187
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_elevation:I

    .line 188
    invoke-virtual {p2, p3, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    .line 187
    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 191
    :cond_5
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_backgroundTint:I

    .line 192
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 194
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, p3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 196
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_labelVisibilityMode:I

    const/4 v1, -0x1

    .line 197
    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result p3

    .line 196
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setLabelVisibilityMode(I)V

    .line 200
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemHorizontalTranslationEnabled:I

    .line 201
    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 200
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    .line 203
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemBackground:I

    invoke-virtual {p2, p3, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_6

    .line 205
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v1, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    goto :goto_1

    .line 207
    :cond_6
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemRippleColor:I

    .line 208
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 210
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    .line 213
    :goto_1
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 214
    sget p3, Lcom/google/android/material/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {p2, p3, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->inflateMenu(I)V

    .line 216
    :cond_7
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 218
    iget-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-ge p2, p3, :cond_8

    .line 220
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->addCompatibilityTopDivider(Landroid/content/Context;)V

    .line 223
    :cond_8
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance p2, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->reselectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->selectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    return-object p0
.end method

.method private addCompatibilityTopDivider(Landroid/content/Context;)V
    .locals 3

    .line 635
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 636
    sget v1, Lcom/google/android/material/R$color;->design_bottom_navigation_shadow_color:I

    .line 637
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 636
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 638
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 641
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->design_bottom_navigation_shadow_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p1, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 642
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createMaterialShapeDrawableBackground(Landroid/content/Context;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 0

    .line 240
    new-instance p0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 241
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    return-object p0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 648
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    .line 650
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuInflater:Landroid/view/MenuInflater;

    return-object p0
.end method


# virtual methods
.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getItemBackgroundResource()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 400
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemBackgroundRes()I

    move-result p0

    return p0
.end method

.method public getItemIconSize()I
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemIconSize()I

    move-result p0

    return p0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->itemRippleColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getItemTextAppearanceActive()I
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemTextAppearanceActive()I

    move-result p0

    return p0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 0

    .line 562
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemTextAppearanceInactive()I

    move-result p0

    return p0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 376
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getLabelVisibilityMode()I
    .locals 0

    .line 543
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getLabelVisibilityMode()I

    move-result p0

    return p0
.end method

.method public getMaxItemCount()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method public getSelectedItemId()I
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getSelectedItemId()I

    move-result p0

    return p0
.end method

.method public inflateMenu(I)V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 300
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 301
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 302
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateMenuView(Z)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 664
    instance-of v0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    if-nez v0, :cond_0

    .line 665
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 668
    :cond_0
    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    .line 669
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 670
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 655
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 656
    new-instance v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 657
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 658
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v0, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public setElevation(F)V
    .locals 1

    .line 253
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 254
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 255
    instance-of v0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 256
    check-cast p0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 437
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->itemRippleColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    const/4 p1, 0x0

    .line 413
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->itemRippleColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 593
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemHorizontalTranslationEnabled(Z)V

    .line 594
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateMenuView(Z)V

    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1

    .line 352
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->itemRippleColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    if-nez p1, :cond_0

    .line 462
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 463
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    .line 468
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->itemRippleColor:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_2

    .line 470
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 473
    :cond_2
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 474
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3

    .line 475
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 477
    :cond_3
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v1, 0x3727c5ac    # 1.0E-5f

    .line 481
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 482
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 483
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 484
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemTextAppearanceActive(I)V

    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 0

    .line 552
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemTextAppearanceInactive(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getLabelVisibilityMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 530
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menuView:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setLabelVisibilityMode(I)V

    .line 531
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->updateMenuView(Z)V

    :cond_0
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->reselectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;

    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->selectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 508
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->presenter:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 509
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
