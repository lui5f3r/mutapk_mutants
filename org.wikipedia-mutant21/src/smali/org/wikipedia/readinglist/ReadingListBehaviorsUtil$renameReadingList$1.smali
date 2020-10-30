.class final Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$renameReadingList$1;
.super Ljava/lang/Object;
.source "ReadingListBehaviorsUtil.kt"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->renameReadingList(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V
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

    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$renameReadingList$1;->$readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$renameReadingList$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$renameReadingList$1;->$readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v0, p1}, Lorg/wikipedia/readinglist/database/ReadingList;->title(Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$renameReadingList$1;->$readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p1, p2}, Lorg/wikipedia/readinglist/database/ReadingList;->description(Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$renameReadingList$1;->$readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/wikipedia/readinglist/database/ReadingList;->dirty(Z)V

    .line 141
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$renameReadingList$1;->$readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p1, v0, p2}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->updateList(Lorg/wikipedia/readinglist/database/ReadingList;Z)V

    .line 142
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$renameReadingList$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    invoke-interface {p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;->onCompleted()V

    return-void
.end method
