.class Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;
.super Ljava/lang/Object;
.source "AssistGestureGameDrawable.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->startGame(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;


# direct methods
.method constructor <init>(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 5

    .line 285
    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    long-to-float v0, p2

    const v1, 0x3a83126f    # 0.001f

    mul-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$202(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;F)F

    .line 287
    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {p1}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$300(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    .line 288
    monitor-enter p0

    .line 289
    :try_start_0
    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {p1}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$200(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)F

    move-result p1

    iget-object v2, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {v2}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$400(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)F

    move-result v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    .line 290
    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {p1}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$600(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/google/android/settings/gestures/assist/bubble/Bubble;

    iget-object v3, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {v3}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$500(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/settings/gestures/assist/bubble/Bubble;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    iget-object v2, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {v2}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$200(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    invoke-static {p1, v2}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$402(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;F)F

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {p1}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$600(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_5

    .line 295
    iget-object v2, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {v2}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$600(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/settings/gestures/assist/bubble/Bubble;

    .line 296
    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/google/android/settings/gestures/assist/bubble/Bubble;->update(JJ)V

    .line 297
    invoke-virtual {v2}, Lcom/google/android/settings/gestures/assist/bubble/Bubble;->isBubbleDead()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    iget-object v2, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {v2}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$600(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 299
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/settings/gestures/assist/bubble/Bubble;->isBubbleTouchingTop()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 300
    invoke-virtual {v2}, Lcom/google/android/settings/gestures/assist/bubble/Bubble;->getState()I

    move-result v3

    if-nez v3, :cond_2

    .line 301
    iget-object v3, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {v3}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$700(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v2, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {v2}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$600(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 303
    :cond_2
    iget-object v3, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {v3, v2}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$800(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;Lcom/google/android/settings/gestures/assist/bubble/Bubble;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 305
    invoke-virtual {v2}, Lcom/google/android/settings/gestures/assist/bubble/Bubble;->getPoint()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2}, Lcom/google/android/settings/gestures/assist/bubble/Bubble;->getSize()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {v4}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$500(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 306
    iget-object v3, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {v3, v0}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$302(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;I)I

    .line 307
    iget-object v3, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {v3, v1}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$902(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;Z)Z

    .line 309
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/settings/gestures/assist/bubble/Bubble;->getState()I

    move-result v3

    if-nez v3, :cond_4

    .line 311
    iget-object v3, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {v3}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$700(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v2, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {v2}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$600(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_0

    .line 316
    :cond_5
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 319
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {p1}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$300(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)I

    move-result p1

    if-ne p1, v0, :cond_b

    .line 321
    monitor-enter p0

    const/4 p1, 0x0

    move v0, p1

    .line 323
    :goto_3
    :try_start_1
    iget-object v2, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {v2}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$1000(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_8

    .line 324
    iget-object v2, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {v2}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$1000(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/settings/gestures/assist/bubble/SpiralingAndroid;

    .line 325
    invoke-virtual {v2}, Lcom/google/android/settings/gestures/assist/bubble/SpiralingAndroid;->getAndroid()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {v4}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$500(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_7

    .line 326
    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/google/android/settings/gestures/assist/bubble/SpiralingAndroid;->update(JJ)V

    move v0, v1

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 331
    :cond_8
    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {p1}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$1100(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 332
    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-virtual {p1}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->disconnectService()V

    :cond_9
    if-nez v0, :cond_a

    .line 335
    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {p1}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$1200(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)V

    .line 336
    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-static {p1}, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;->access$1300(Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;)Landroid/animation/TimeAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/TimeAnimator;->pause()V

    .line 338
    :cond_a
    monitor-exit p0

    goto :goto_4

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 341
    :cond_b
    :goto_4
    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable$2;->this$0:Lcom/google/android/settings/gestures/assist/bubble/AssistGestureGameDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
