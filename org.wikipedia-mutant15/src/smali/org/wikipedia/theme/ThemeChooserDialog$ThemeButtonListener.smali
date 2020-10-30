.class final Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;
.super Ljava/lang/Object;
.source "ThemeChooserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/theme/ThemeChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThemeButtonListener"
.end annotation


# instance fields
.field private theme:Lorg/wikipedia/theme/Theme;

.field final synthetic this$0:Lorg/wikipedia/theme/ThemeChooserDialog;


# direct methods
.method private constructor <init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/Theme;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;->theme:Lorg/wikipedia/theme/Theme;

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/Theme;Lorg/wikipedia/theme/ThemeChooserDialog$1;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/Theme;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 268
    iget-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-static {p1}, Lorg/wikipedia/theme/ThemeChooserDialog;->access$200(Lorg/wikipedia/theme/ThemeChooserDialog;)Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;->theme:Lorg/wikipedia/theme/Theme;

    if-eq p1, v0, :cond_0

    .line 269
    iget-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-static {p1}, Lorg/wikipedia/theme/ThemeChooserDialog;->access$500(Lorg/wikipedia/theme/ThemeChooserDialog;)Lorg/wikipedia/analytics/AppearanceChangeFunnel;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-static {v0}, Lorg/wikipedia/theme/ThemeChooserDialog;->access$200(Lorg/wikipedia/theme/ThemeChooserDialog;)Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;->theme:Lorg/wikipedia/theme/Theme;

    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/analytics/AppearanceChangeFunnel;->logThemeChange(Lorg/wikipedia/theme/Theme;Lorg/wikipedia/theme/Theme;)V

    .line 270
    iget-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-static {p1}, Lorg/wikipedia/theme/ThemeChooserDialog;->access$200(Lorg/wikipedia/theme/ThemeChooserDialog;)Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;->theme:Lorg/wikipedia/theme/Theme;

    invoke-virtual {p1, v0}, Lorg/wikipedia/WikipediaApp;->setCurrentTheme(Lorg/wikipedia/theme/Theme;)V

    :cond_0
    return-void
.end method
