.class public Lcom/android/settingslib/applications/ApplicationsState$Session;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field final mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

.field private mFlags:I

.field private final mHasLifecycle:Z

.field mLastAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildAsync:Z

.field mRebuildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field mRebuildForeground:Z

.field mRebuildRequested:Z

.field mRebuildResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mRebuildSync:Ljava/lang/Object;

.field mResumed:Z

.field final synthetic this$0:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 786
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    const/16 p1, 0xf

    .line 783
    iput p1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mFlags:I

    .line 787
    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    if-eqz p3, :cond_0

    .line 789
    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 p1, 0x1

    .line 790
    iput-boolean p1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mHasLifecycle:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 792
    iput-boolean p1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mHasLifecycle:Z

    :goto_0
    return-void
.end method

.method static synthetic access$300(Lcom/android/settingslib/applications/ApplicationsState$Session;)I
    .locals 0

    .line 767
    iget p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mFlags:I

    return p0
.end method


# virtual methods
.method public getAllApps()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .line 834
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 835
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 836
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method handleRebuildList()V
    .locals 7

    .line 869
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v0

    .line 870
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v1, :cond_0

    .line 871
    monitor-exit v0

    return-void

    .line 874
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 875
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    const/4 v3, 0x0

    .line 876
    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    const/4 v4, 0x0

    .line 877
    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 878
    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 879
    iget-boolean v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildForeground:Z

    if-eqz v4, :cond_1

    const/4 v4, -0x2

    .line 880
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 881
    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildForeground:Z

    .line 883
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v1, :cond_2

    .line 886
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-interface {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->init(Landroid/content/Context;)V

    .line 890
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v3

    .line 891
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 892
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 894
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 898
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_3

    if-eqz v1, :cond_4

    .line 899
    invoke-interface {v1, v4}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 900
    :cond_4
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v5

    if-eqz v2, :cond_5

    .line 906
    :try_start_2
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 911
    :cond_5
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_6
    if-eqz v2, :cond_7

    .line 920
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 923
    :try_start_3
    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 924
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 927
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v0

    .line 928
    :try_start_4
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v1, :cond_9

    .line 929
    iput-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    .line 930
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildAsync:Z

    if-nez v1, :cond_8

    .line 931
    iput-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 932
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    .line 934
    :cond_8
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 935
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 937
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 941
    :cond_9
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 p0, 0xa

    .line 943
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_2
    move-exception p0

    .line 941
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    .line 892
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 883
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method

.method public onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 948
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mHasLifecycle:Z

    if-nez v0, :cond_0

    .line 950
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onPause()V

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 953
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 954
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPause()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 822
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 823
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 824
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    .line 825
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settingslib/applications/ApplicationsState;->mSessionsChanged:Z

    .line 826
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 827
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doPauseIfNeededLocked()V

    .line 830
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 808
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 809
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 810
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    .line 811
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iput-boolean v1, v2, Lcom/android/settingslib/applications/ApplicationsState;->mSessionsChanged:Z

    .line 812
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/settingslib/applications/ApplicationsState;->doPauseLocked()V

    .line 813
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 815
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 841
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .line 846
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v0

    .line 847
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 848
    :try_start_1
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 849
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    .line 850
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildAsync:Z

    .line 851
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 852
    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 853
    iput-boolean p3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildForeground:Z

    const/4 p1, 0x0

    .line 854
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 855
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 856
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 858
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 860
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 862
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    :catchall_0
    move-exception p0

    .line 860
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    .line 863
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
