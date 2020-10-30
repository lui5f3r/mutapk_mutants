.class final Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$1;
.super Ljava/lang/Object;
.source "ReadingListBehaviorsUtil.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->deleteReadingList(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingList;ZLorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

.field final synthetic $readingList:Lorg/wikipedia/readinglist/database/ReadingList;


# direct methods
.method constructor <init>(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$1;->$readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 91
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object p1

    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$1;->$readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p1, p2}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->deleteList(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 92
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object p1

    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$1;->$readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p2}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->markPagesForDeletion(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;Z)V

    .line 93
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$deleteReadingList$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    invoke-interface {p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;->onCompleted()V

    return-void
.end method
