.class Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemCallback;
.super Ljava/lang/Object;
.source "AddToReadingListDialog.java"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListItemView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/AddToReadingListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadingListItemCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;


# direct methods
.method private constructor <init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;Lorg/wikipedia/readinglist/AddToReadingListDialog$1;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemCallback;-><init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 2

    .line 256
    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemCallback;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    invoke-static {v0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->access$400(Lorg/wikipedia/readinglist/AddToReadingListDialog;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->access$500(Lorg/wikipedia/readinglist/AddToReadingListDialog;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V

    return-void
.end method

.method public onDelete(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    return-void
.end method

.method public onRemoveAllOffline(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    return-void
.end method

.method public onRename(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    return-void
.end method

.method public onSaveAllOffline(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    return-void
.end method
