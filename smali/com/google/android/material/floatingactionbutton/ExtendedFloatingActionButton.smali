.class public Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.super Lcom/google/android/material/button/MaterialButton;
.source "ExtendedFloatingActionButton.java"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;
    }
.end annotation


# static fields
.field private static final CORNER_RADIUS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEIGHT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final WIDTH:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private animState:I

.field private final behavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
            "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private currentCollapseExpandAnimator:Landroid/animation/Animator;

.field private currentShowHideAnimator:Landroid/animation/Animator;

.field private defaultExtendMotionSpec:Lcom/google/android/material/animation/MotionSpec;

.field private defaultHideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

.field private defaultShowMotionSpec:Lcom/google/android/material/animation/MotionSpec;

.field private defaultShrinkMotionSpec:Lcom/google/android/material/animation/MotionSpec;

.field private extendListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private extendMotionSpec:Lcom/google/android/material/animation/MotionSpec;

.field private hideListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

.field private isExtended:Z

.field private final shadowPadding:Landroid/graphics/Rect;

.field private showListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

.field private shrinkListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private shrinkMotionSpec:Lcom/google/android/material/animation/MotionSpec;

.field private userSetVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 873
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;

    const-class v1, Ljava/lang/Float;

    const-string v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->WIDTH:Landroid/util/Property;

    .line 891
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;

    const-class v1, Ljava/lang/Float;

    const-string v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->HEIGHT:Landroid/util/Property;

    .line 910
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$6;

    const-class v1, Ljava/lang/Float;

    const-string v2, "cornerRadius"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->CORNER_RADIUS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 145
    sget v0, Lcom/google/android/material/R$attr;->extendedFloatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    const/4 v1, 0x1

    .line 98
    iput-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    .line 154
    new-instance v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;

    invoke-direct {v2, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->behavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 155
    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    iput v2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->userSetVisibility:I

    .line 157
    sget-object v5, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton:[I

    sget v7, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ExtendedFloatingActionButton_Icon:I

    new-array v8, v0, [I

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    .line 158
    invoke-static/range {v3 .. v8}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 165
    sget p3, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton_showMotionSpec:I

    .line 166
    invoke-static {p1, p2, p3}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 168
    sget p3, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton_hideMotionSpec:I

    .line 169
    invoke-static {p1, p2, p3}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 171
    sget p3, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton_extendMotionSpec:I

    .line 172
    invoke-static {p1, p2, p3}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 174
    sget p3, Lcom/google/android/material/R$styleable;->ExtendedFloatingActionButton_shrinkMotionSpec:I

    .line 175
    invoke-static {p1, p2, p3}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 178
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setHorizontallyScrolling(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;IZ)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->internalSetVisibility(IZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->currentShowHideAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->currentCollapseExpandAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hide(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->show(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Landroid/graphics/Rect;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    return-object p0
.end method

.method private createAnimator(Lcom/google/android/material/animation/MotionSpec;)Landroid/animation/AnimatorSet;
    .locals 3

    .line 701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "opacity"

    .line 703
    invoke-virtual {p1, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 704
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p1, v1, p0, v2}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "scale"

    .line 707
    invoke-virtual {p1, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 708
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p1, v1, p0, v2}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p1, v1, p0, v2}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "width"

    .line 712
    invoke-virtual {p1, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 713
    sget-object v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->WIDTH:Landroid/util/Property;

    invoke-virtual {p1, v1, p0, v2}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "height"

    .line 716
    invoke-virtual {p1, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 717
    sget-object v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->HEIGHT:Landroid/util/Property;

    invoke-virtual {p1, v1, p0, v2}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "cornerRadius"

    .line 720
    invoke-virtual {p1, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 721
    sget-object v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->CORNER_RADIUS:Landroid/util/Property;

    invoke-virtual {p1, v1, p0, v2}, Lcom/google/android/material/animation/MotionSpec;->getAnimator(Ljava/lang/String;Landroid/view/View;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    :cond_4
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 725
    invoke-static {p0, v0}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p0
.end method

.method private createShrinkExtendAnimator(Lcom/google/android/material/animation/MotionSpec;Z)Landroid/animation/AnimatorSet;
    .locals 9

    .line 734
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIconSize()I

    move-result v2

    add-int/2addr v0, v2

    const-string v2, "width"

    .line 736
    invoke-virtual {p1, v2}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 737
    invoke-virtual {p1, v2}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 739
    aget-object v6, v3, v5

    new-array v7, v1, [F

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v5

    int-to-float v8, v0

    aput v8, v7, v4

    invoke-virtual {v6, v7}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_0

    .line 741
    :cond_0
    aget-object v6, v3, v5

    new-array v7, v1, [F

    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v5

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v4

    invoke-virtual {v6, v7}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 743
    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    :cond_1
    const-string v2, "height"

    .line 746
    invoke-virtual {p1, v2}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 747
    invoke-virtual {p1, v2}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    if-eqz p2, :cond_2

    .line 749
    aget-object v6, v3, v5

    new-array v7, v1, [F

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v5

    int-to-float v8, v0

    aput v8, v7, v4

    invoke-virtual {v6, v7}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1

    .line 751
    :cond_2
    aget-object v6, v3, v5

    new-array v7, v1, [F

    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v5

    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v4

    invoke-virtual {v6, v7}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 753
    :goto_1
    invoke-virtual {p1, v2, v3}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    :cond_3
    const-string v2, "cornerRadius"

    .line 756
    invoke-virtual {p1, v2}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 757
    invoke-virtual {p1, v2}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    if-eqz p2, :cond_4

    .line 759
    aget-object p2, v3, v5

    new-array v1, v1, [F

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getCornerRadius()I

    move-result v6

    int-to-float v6, v6

    aput v6, v1, v5

    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getAdjustedRadius(I)I

    move-result v0

    int-to-float v0, v0

    aput v0, v1, v4

    invoke-virtual {p2, v1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_2

    .line 761
    :cond_4
    aget-object p2, v3, v5

    new-array v0, v1, [F

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getCornerRadius()I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v5

    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getAdjustedRadius(I)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v4

    invoke-virtual {p2, v0}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 763
    :goto_2
    invoke-virtual {p1, v2, v3}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 766
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->createAnimator(Lcom/google/android/material/animation/MotionSpec;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method private extendNow()V
    .locals 2

    .line 807
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 811
    invoke-virtual {p0, v1, v1}, Landroid/widget/Button;->measure(II)V

    .line 812
    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 813
    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 814
    invoke-virtual {p0}, Landroid/widget/Button;->requestLayout()V

    return-void
.end method

.method private getAdjustedRadius(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    .line 929
    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private getCurrentExtendMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 2

    .line 844
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-eqz v0, :cond_0

    return-object v0

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultExtendMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-nez v0, :cond_1

    .line 851
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$animator;->mtrl_extended_fab_extend_motion_spec:I

    .line 850
    invoke-static {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultExtendMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 853
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultExtendMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method private getCurrentHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-eqz v0, :cond_0

    return-object v0

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultHideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-nez v0, :cond_1

    .line 838
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$animator;->mtrl_extended_fab_hide_motion_spec:I

    .line 837
    invoke-static {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultHideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 840
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultHideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method private getCurrentShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 2

    .line 818
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-eqz v0, :cond_0

    return-object v0

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultShowMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-nez v0, :cond_1

    .line 825
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$animator;->mtrl_extended_fab_show_motion_spec:I

    .line 824
    invoke-static {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultShowMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 827
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultShowMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method private getCurrentShrinkMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 2

    .line 857
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-eqz v0, :cond_0

    return-object v0

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultShrinkMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    if-nez v0, :cond_1

    .line 864
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$animator;->mtrl_extended_fab_shrink_motion_spec:I

    .line 863
    invoke-static {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultShrinkMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    .line 866
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->defaultShrinkMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method private hide(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
    .locals 1

    .line 319
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isOrWillBeHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->currentShowHideAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    if-eqz p2, :cond_3

    .line 328
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shouldAnimateVisibilityChange()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 329
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCurrentHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->createAnimator(Lcom/google/android/material/animation/MotionSpec;)Landroid/animation/AnimatorSet;

    move-result-object p2

    .line 330
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;ZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 361
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideListeners:Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    .line 362
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    .line 363
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 366
    :cond_2
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    const/16 p2, 0x8

    goto :goto_1

    :cond_4
    const/4 p2, 0x4

    .line 369
    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->internalSetVisibility(IZ)V

    if-eqz p3, :cond_5

    .line 371
    invoke-virtual {p3, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;->onHidden(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private internalSetVisibility(IZ)V
    .locals 0

    .line 214
    invoke-super {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 216
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->userSetVisibility:I

    :cond_0
    return-void
.end method

.method private isOrWillBeHidden()Z
    .locals 3

    .line 780
    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 782
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 785
    :cond_1
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private isOrWillBeShown()Z
    .locals 3

    .line 770
    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 772
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 775
    :cond_1
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->animState:I

    if-eq p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private setExtended(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
    .locals 1

    .line 635
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    if-eq p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 638
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    .line 639
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->currentCollapseExpandAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 640
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    if-eqz p2, :cond_5

    .line 643
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shouldAnimateVisibilityChange()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    .line 644
    invoke-virtual {p0, p2, p2}, Landroid/widget/Button;->measure(II)V

    .line 645
    iget-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    if-eqz p2, :cond_2

    .line 647
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCurrentExtendMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCurrentShrinkMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object p2

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    xor-int/lit8 v0, v0, 0x1

    .line 646
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->createShrinkExtendAnimator(Lcom/google/android/material/animation/MotionSpec;Z)Landroid/animation/AnimatorSet;

    move-result-object p2

    .line 649
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;

    invoke-direct {v0, p0, p3, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_3

    .line 678
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendListeners:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkListeners:Ljava/util/ArrayList;

    :goto_1
    if-eqz p0, :cond_4

    .line 680
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    .line 681
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 684
    :cond_4
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    .line 687
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendNow()V

    if-eqz p3, :cond_7

    .line 689
    invoke-virtual {p3, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;->onExtended(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    goto :goto_3

    .line 692
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkNow()V

    if-eqz p3, :cond_7

    .line 694
    invoke-virtual {p3, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;->onShrunken(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private shouldAnimateVisibilityChange()Z
    .locals 1

    .line 790
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->isInEditMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private show(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
    .locals 1

    .line 407
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isOrWillBeShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->currentShowHideAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 413
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    if-eqz p2, :cond_3

    .line 416
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shouldAnimateVisibilityChange()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 417
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCurrentShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->createAnimator(Lcom/google/android/material/animation/MotionSpec;)Landroid/animation/AnimatorSet;

    move-result-object p2

    .line 418
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;ZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 438
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showListeners:Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    .line 439
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    .line 440
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 443
    :cond_2
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 445
    invoke-direct {p0, p2, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->internalSetVisibility(IZ)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 446
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setAlpha(F)V

    .line 447
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setScaleY(F)V

    .line 448
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setScaleX(F)V

    if-eqz p3, :cond_4

    .line 450
    invoke-virtual {p3, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;->onShown(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private shrinkNow()V
    .locals 3

    .line 795
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 799
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIconSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 800
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 801
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 802
    invoke-virtual {p0}, Landroid/widget/Button;->requestLayout()V

    return-void
.end method


# virtual methods
.method public extend(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 487
    invoke-direct {p0, v0, v0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtended(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V

    return-void
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
            "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->behavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    return-object p0
.end method

.method public getExtendMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 0

    .line 576
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method public getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 0

    .line 552
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 0

    .line 528
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method public getShrinkMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 0

    .line 600
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-object p0
.end method

.method public final getUserSetVisibility()I
    .locals 0

    .line 221
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->userSetVisibility:I

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 186
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 188
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isExtended:Z

    .line 190
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkNow()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 196
    invoke-super {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->onMeasure(II)V

    .line 199
    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getAdjustedRadius(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    return-void
.end method

.method public setExtendMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->extendMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-void
.end method

.method public setExtendMotionSpecResource(I)V
    .locals 1

    .line 594
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtendMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->hideMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    .line 570
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->showMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    .line 546
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    return-void
.end method

.method public setShrinkMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->shrinkMotionSpec:Lcom/google/android/material/animation/MotionSpec;

    return-void
.end method

.method public setShrinkMotionSpecResource(I)V
    .locals 1

    .line 618
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShrinkMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    const/4 v0, 0x1

    .line 210
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->internalSetVisibility(IZ)V

    return-void
.end method

.method public shrink(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 522
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtended(ZZLcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedListener;)V

    return-void
.end method
