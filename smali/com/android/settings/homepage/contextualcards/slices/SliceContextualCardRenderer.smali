.class public Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;
.super Ljava/lang/Object;
.source "SliceContextualCardRenderer.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

.field private final mDeferredSetupCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;

.field final mFlippedCardSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mFullCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;

.field private final mHalfCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;

.field private final mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field final mSliceLiveDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 76
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mSliceLiveDataMap:Ljava/util/Map;

    .line 77
    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    .line 78
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mFlippedCardSet:Ljava/util/Set;

    .line 79
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 80
    new-instance p2, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;

    invoke-direct {p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mFullCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;

    .line 81
    new-instance p2, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;

    invoke-direct {p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mHalfCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;

    .line 82
    new-instance p2, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;

    invoke-direct {p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mDeferredSetupCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;

    return-void
.end method

.method private getInitialView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;
    .locals 1

    .line 200
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p0

    const v0, 0x7f0d006d

    if-ne p0, v0, :cond_0

    .line 201
    check-cast p1, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;

    iget-object p0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;->content:Landroid/widget/LinearLayout;

    return-object p0

    .line 203
    :cond_0
    check-cast p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    iget-object p0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    return-object p0
.end method

.method private initDismissalActions(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 2

    .line 168
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0242

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 169
    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$lfD82mK9hvfwlExltbohxspTnDM;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$lfD82mK9hvfwlExltbohxspTnDM;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a037b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 175
    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$k7zJw9L_NGhX9hj0vw7w7C7YhaQ;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$k7zJw9L_NGhX9hj0vw7w7C7YhaQ;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private resetCardView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 190
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->getInitialView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showDismissalView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 195
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->getInitialView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 4

    .line 99
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getSliceUri()Landroid/net/Uri;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid uri, skipping slice: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SliceCardRenderer"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mSliceLiveDataMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LiveData;

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/slice/widget/SliceLiveData;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mSliceLiveDataMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0164

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 114
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    .line 117
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    new-instance v3, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$Suc5qG_b2ywDyecCCfO1YnSa0M4;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$Suc5qG_b2ywDyecCCfO1YnSa0M4;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroid/view/View;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 150
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const v1, 0x7f0d006b

    if-eq v0, v1, :cond_4

    const v1, 0x7f0d006d

    if-eq v0, v1, :cond_3

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->initDismissalActions(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    goto :goto_0

    .line 155
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->initDismissalActions(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    .line 161
    :cond_4
    :goto_0
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->isPendingDismiss()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 162
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->showDismissalView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 163
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mFlippedCardSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public createViewHolder(Landroid/view/View;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const v0, 0x7f0d006b

    if-eq p2, v0, :cond_1

    const v0, 0x7f0d006d

    if-eq p2, v0, :cond_0

    .line 93
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mFullCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;->createViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mHalfCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;->createViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0

    .line 89
    :cond_1
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mDeferredSetupCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;->createViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$bindView$0$SliceContextualCardRenderer(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroid/view/View;Landroidx/slice/Slice;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "SliceCardRenderer"

    if-nez p4, :cond_0

    const-string p1, "Slice is null"

    .line 121
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/settings/homepage/contextualcards/CardContentProvider;->REFRESH_CARD_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void

    :cond_0
    const-string v2, "error"

    .line 127
    invoke-virtual {p4, v2}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Slice has HINT_ERROR, skipping rendering. uri="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mSliceLiveDataMap:Ljava/util/Map;

    invoke-virtual {p4}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 130
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/settings/homepage/contextualcards/CardContentProvider;->REFRESH_CARD_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const v1, 0x7f0d006b

    if-eq v0, v1, :cond_3

    const v1, 0x7f0d006d

    if-eq v0, v1, :cond_2

    .line 143
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mFullCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;->bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroidx/slice/Slice;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mHalfCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;->bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroidx/slice/Slice;)V

    goto :goto_0

    .line 137
    :cond_3
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mDeferredSetupCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/settings/homepage/contextualcards/slices/SliceDeferredSetupCardRendererHelper;->bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroidx/slice/Slice;)V

    :goto_0
    if-eqz p3, :cond_4

    const/4 p0, 0x0

    .line 146
    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public synthetic lambda$initDismissalActions$1$SliceContextualCardRenderer(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 170
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mFlippedCardSet:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 171
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->resetCardView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public synthetic lambda$initDismissalActions$2$SliceContextualCardRenderer(Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 2

    .line 176
    iget-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCardType()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardController;->onDismissed(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    .line 177
    iget-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mFlippedCardSet:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 178
    invoke-direct {p0, p2}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->resetCardView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 179
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mSliceLiveDataMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getSliceUri()Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic lambda$onStop$3$SliceContextualCardRenderer(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->resetCardView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mFlippedCardSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$I19u9nEF_f3Sw8eprtUXuztAfiQ;

    invoke-direct {v1, p0}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$I19u9nEF_f3Sw8eprtUXuztAfiQ;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 186
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mFlippedCardSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method
