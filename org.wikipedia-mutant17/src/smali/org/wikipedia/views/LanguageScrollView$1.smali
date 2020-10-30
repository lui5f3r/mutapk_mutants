.class Lorg/wikipedia/views/LanguageScrollView$1;
.super Ljava/lang/Object;
.source "LanguageScrollView.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/LanguageScrollView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/views/LanguageScrollView;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/LanguageScrollView;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/wikipedia/views/LanguageScrollView$1;->this$0:Lorg/wikipedia/views/LanguageScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/wikipedia/views/LanguageScrollView$1;->this$0:Lorg/wikipedia/views/LanguageScrollView;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lorg/wikipedia/views/LanguageScrollView;->access$000(Lorg/wikipedia/views/LanguageScrollView;ZLcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/wikipedia/views/LanguageScrollView$1;->this$0:Lorg/wikipedia/views/LanguageScrollView;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lorg/wikipedia/views/LanguageScrollView;->access$000(Lorg/wikipedia/views/LanguageScrollView;ZLcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/wikipedia/views/LanguageScrollView$1;->this$0:Lorg/wikipedia/views/LanguageScrollView;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lorg/wikipedia/views/LanguageScrollView;->access$000(Lorg/wikipedia/views/LanguageScrollView;ZLcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method
