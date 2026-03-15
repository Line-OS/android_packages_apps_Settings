.class public Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;
.super Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;
.source "ListBuilderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/ListBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputRangeBuilderImpl"
.end annotation


# instance fields
.field private mAction:Landroid/app/PendingIntent;

.field private mThumb:Landroidx/core/graphics/drawable/IconCompat;


# direct methods
.method constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)V
    .locals 1

    const/4 v0, 0x0

    .line 385
    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/builders/ListBuilder$RangeBuilder;)V

    .line 386
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->isValueSet()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mValueSet:Z

    .line 387
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getMin()I

    move-result p1

    iput p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mMin:I

    .line 388
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getMax()I

    move-result p1

    iput p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mMax:I

    .line 389
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getValue()I

    move-result p1

    iput p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mValue:I

    .line 390
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mTitle:Ljava/lang/CharSequence;

    .line 391
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mSubtitle:Ljava/lang/CharSequence;

    .line 392
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    .line 393
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    .line 394
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->mLayoutDir:I

    .line 395
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getInputAction()Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mAction:Landroid/app/PendingIntent;

    .line 396
    invoke-virtual {p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->getThumb()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mThumb:Landroidx/core/graphics/drawable/IconCompat;

    return-void
.end method


# virtual methods
.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 4

    .line 401
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mAction:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 404
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 405
    invoke-super {p0, v0}, Landroidx/slice/builders/impl/ListBuilderImpl$RangeBuilderImpl;->apply(Landroidx/slice/Slice$Builder;)V

    .line 406
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mThumb:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 407
    invoke-virtual {v0, v1, v2, v3}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 409
    :cond_0
    iget-object p0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mAction:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    const-string v1, "range"

    invoke-virtual {p1, p0, v0, v1}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    const-string p0, "list_item"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void

    .line 402
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Input ranges must have an associated action."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
