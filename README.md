# Bash скрипт для мониторинга параметров системы
Каждые 30 секунд записывает в файл output.log информацию об оперативной памяти, диске и текущей нагрузке на ЦП.

## Информация о скрипте

В случае отсутствия файла output.log в рабочей директрии, создает файл и дописывает в конец файла новые записи.
Добавлена проверка доступа для записи в файл output.log. Завершение мониторинга комбинацией CTRL+C также отражается в логе


## Структура вывода одной записи:

--- Дата Время ---

RAM usage
*Результат вывода команды free -h*

Filesystem
*Результат вывода команды df -h*

Working time and CPU payload
*Результат вывода команды uptime*



--- Дата Время [Script stopped by user] ---



## Пример работы скрипта (содержимое файла output.log)

--- 2026-10-19 22:31:22 ---

RAM usage:
               total        used        free      shared  buff/cache   available
Mem:           937Mi       194Mi       149Mi       1.0Mi       613Mi       743Mi
Swap:             0B          0B          0B

Filesystem:
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           188M  1.1M  187M   1% /run
/dev/sda1       3.8G  2.2G  1.6G  59% /
tmpfs           469M     0  469M   0% /dev/shm
efivarfs        256K  9.2K  242K   4% /sys/firmware/efi/efivars
tmpfs           469M     0  469M   0% /tmp
none            1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
none            1.0M     0  1.0M   0% /run/credentials/systemd-resolved.service
/dev/sda13      989M  108M  814M  12% /boot
/dev/sda15      105M  6.3M   99M   7% /boot/efi
none            1.0M     0  1.0M   0% /run/credentials/systemd-networkd.service
tmpfs            94M  8.0K   94M   1% /run/user/1000
none            1.0M     0  1.0M   0% /run/credentials/getty@tty1.service
none            1.0M     0  1.0M   0% /run/credentials/serial-getty@ttyS0.service
tmpfs            94M  8.0K   94M   1% /run/user/1001

Working time and CPU payload: 
 22:31:22 up  3:37,  3 users,  load average: 0.02, 0.09, 0.05



--- 2026-10-19 22:31:23 [Script stopped by user] ---

--- 2026-10-19 22:31:25 ---

RAM usage:
               total        used        free      shared  buff/cache   available
Mem:           937Mi       196Mi       148Mi       1.0Mi       613Mi       741Mi
Swap:             0B          0B          0B

Filesystem:
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           188M  1.1M  187M   1% /run
/dev/sda1       3.8G  2.2G  1.6G  59% /
tmpfs           469M     0  469M   0% /dev/shm
efivarfs        256K  9.2K  242K   4% /sys/firmware/efi/efivars
tmpfs           469M     0  469M   0% /tmp
none            1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
none            1.0M     0  1.0M   0% /run/credentials/systemd-resolved.service
/dev/sda13      989M  108M  814M  12% /boot
/dev/sda15      105M  6.3M   99M   7% /boot/efi
none            1.0M     0  1.0M   0% /run/credentials/systemd-networkd.service
tmpfs            94M  8.0K   94M   1% /run/user/1000
none            1.0M     0  1.0M   0% /run/credentials/getty@tty1.service
none            1.0M     0  1.0M   0% /run/credentials/serial-getty@ttyS0.service
tmpfs            94M  8.0K   94M   1% /run/user/1001

Working time and CPU payload: 
 22:31:25 up  3:37,  3 users,  load average: 0.02, 0.09, 0.05



--- 2026-10-19 22:31:26 [Script stopped by user] ---

--- 2026-10-19 22:31:49 ---

RAM usage:
               total        used        free      shared  buff/cache   available
Mem:           937Mi       194Mi       149Mi       1.0Mi       613Mi       743Mi
Swap:             0B          0B          0B

Filesystem:
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           188M  1.1M  187M   1% /run
/dev/sda1       3.8G  2.2G  1.6G  59% /
tmpfs           469M     0  469M   0% /dev/shm
efivarfs        256K  9.2K  242K   4% /sys/firmware/efi/efivars
tmpfs           469M     0  469M   0% /tmp
none            1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
none            1.0M     0  1.0M   0% /run/credentials/systemd-resolved.service
/dev/sda13      989M  108M  814M  12% /boot
/dev/sda15      105M  6.3M   99M   7% /boot/efi
none            1.0M     0  1.0M   0% /run/credentials/systemd-networkd.service
tmpfs            94M  8.0K   94M   1% /run/user/1000
none            1.0M     0  1.0M   0% /run/credentials/getty@tty1.service
none            1.0M     0  1.0M   0% /run/credentials/serial-getty@ttyS0.service
tmpfs            94M  8.0K   94M   1% /run/user/1001

Working time and CPU payload: 
 22:31:49 up  3:38,  3 users,  load average: 0.01, 0.08, 0.05



--- 2026-10-19 22:31:50 [Script stopped by user] ---

