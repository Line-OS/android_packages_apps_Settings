.class Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;
.super Ljava/lang/Object;
.source "SliceFullCardRendererHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroidx/slice/Slice;)V
    .locals 2

    .line 50
    check-cast p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    .line 51
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setScrollable(Z)V

    .line 52
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getSliceUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setMode(I)V

    .line 55
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {v0, p3}, Landroidx/slice/widget/SliceView;->setSlice(Landroidx/slice/Slice;)V

    .line 57
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$Y1sdKF2uddSlyjUQNIqTPJOC4OY;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceFullCardRendererHelper$Y1sdKF2uddSlyjUQNIqTPJOC4OY;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;Landroidx/slice/Slice;)V

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setOnSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 76
    iget-object p0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Landroidx/slice/widget/SliceView;->setShowTitleItems(Z)V

    .line 77
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->isLargeCard()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 78
    iget-object p0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {p0, p3}, Landroidx/slice/widget/SliceView;->setShowHeaderDivider(Z)V

    .line 79
    iget-object p0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {p0, p3}, Landroidx/slice/widget/SliceView;->setShowActionDividers(Z)V

    :cond_0
    return-void
.end method

.method createViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 46
    new-instance p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public synthetic lambda$bindView$0$SliceFullCardRendererHelper(Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;Landroidx/slice/Slice;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    .locals 0

    .line 59
    iget p5, p4, Landroidx/slice/widget/EventInfo;->rowIndex:I

    iget p4, p4, Landroidx/slice/widget/EventInfo;->actionType:I

    .line 60
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 59
    invoke-static {p1, p5, p4, p2}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils;->buildCardClickLog(Lcom/android/settings/homepage/contextualcards/ContextualCard;III)Ljava/lang/String;

    move-result-object p1

    .line 62
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {p2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p2

    .line 65
    iget-object p4, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;->mContext:Landroid/content/Context;

    const/16 p5, 0x682

    invoke-virtual {p2, p4, p5, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/settings/overlay/FeatureFactory;->getContextualCardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProvider;

    move-result-object p0

    .line 72
    invoke-interface {p0, p3}, Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProvider;->logNotificationPackage(Landroidx/slice/Slice;)V

    return-void
.end method
