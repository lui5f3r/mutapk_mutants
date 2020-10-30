.class public final synthetic Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$Vd_YeP5DiBxWzENoiuDlltqSOp0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/core/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lokhttp3/Request;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$Vd_YeP5DiBxWzENoiuDlltqSOp0;->f$0:Lokhttp3/Request;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/savedpages/-$$Lambda$SavedPageSyncService$Vd_YeP5DiBxWzENoiuDlltqSOp0;->f$0:Lokhttp3/Request;

    invoke-static {v0, p1}, Lorg/wikipedia/savedpages/SavedPageSyncService;->lambda$reqMobileHTML$7(Lokhttp3/Request;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method
