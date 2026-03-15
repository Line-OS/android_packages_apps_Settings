.class public Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;
.super Ljava/lang/Object;
.source "FragmentViewDelegate.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;
    }
.end annotation


# instance fields
.field private fragmentView:Landroid/view/View;

.field private measurementSurrogate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;->fragmentView:Landroid/view/View;

    .line 61
    iput-object v0, p0, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;->measurementSurrogate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;

    return-void
.end method

.method public onGlobalLayout()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;->measurementSurrogate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;

    invoke-interface {v0}, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;->getMeasureSpecs()Landroid/graphics/Point;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;->fragmentView:Landroid/view/View;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 68
    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;->measurementSurrogate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;->fragmentView:Landroid/view/View;

    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 68
    invoke-interface {v0, v1, v2}, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;->onFragmentContentMeasurement(II)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;->cleanUp()V

    return-void
.end method

.method public watch(Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;Landroid/view/View;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;->measurementSurrogate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;

    .line 44
    iput-object p2, p0, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;->fragmentView:Landroid/view/View;

    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
