.class final Lio/reactivex/rxjava3/schedulers/Schedulers$NewThreadHolder;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/schedulers/Schedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NewThreadHolder"
.end annotation


# static fields
.field static final DEFAULT:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/NewThreadScheduler;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/schedulers/NewThreadScheduler;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers$NewThreadHolder;->DEFAULT:Lio/reactivex/rxjava3/core/Scheduler;

    return-void
.end method