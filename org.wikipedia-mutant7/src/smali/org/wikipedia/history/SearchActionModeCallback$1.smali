.class Lorg/wikipedia/history/SearchActionModeCallback$1;
.super Ljava/lang/Object;
.source "SearchActionModeCallback.java"

# interfaces
.implements Lorg/wikipedia/views/SearchActionProvider$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/history/SearchActionModeCallback;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/history/SearchActionModeCallback;


# direct methods
.method constructor <init>(Lorg/wikipedia/history/SearchActionModeCallback;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lorg/wikipedia/history/SearchActionModeCallback$1;->this$0:Lorg/wikipedia/history/SearchActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/wikipedia/history/SearchActionModeCallback$1;->this$0:Lorg/wikipedia/history/SearchActionModeCallback;

    invoke-virtual {v0, p1}, Lorg/wikipedia/history/SearchActionModeCallback;->onQueryChange(Ljava/lang/String;)V

    return-void
.end method

.method public onQueryTextFocusChange()V
    .locals 0

    return-void
.end method
