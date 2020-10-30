.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$Ku9N3Ysf9_e780Pmp01TpO2nB0A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/ReadingListFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$Ku9N3Ysf9_e780Pmp01TpO2nB0A;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$Ku9N3Ysf9_e780Pmp01TpO2nB0A;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->lambda$onDeleteItem$10$ReadingListFragment()V

    return-void
.end method
